# frozen_string_literal: true

class Item < ApplicationRecord
  belongs_to :user
  belongs_to :category

  has_many :item_documents, dependent: :destroy
  has_many :item_images, dependent: :destroy

  validates :name, presence: true
  validates :description, presence: true
  validates :quantity, numericality: { greater_than: 0 }
  validates :value, numericality: { greater_than: 0 }

  def self.ransackable_attributes(_auth_object = nil)
    %w[buy_at category_id created_at description id id_value name quantity updated_at user_id value]
  end
end
