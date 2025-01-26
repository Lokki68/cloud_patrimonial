# frozen_string_literal: true

class Item < ApplicationRecord
  belongs_to :user
  belongs_to :category

  validates :name, presence: true
  validates :description, presence: true
  validates :quantity, numericality: { greater_than: 0 }
  validates :value, numericality: { greater_than: 0 }

  def self.ransackable_attributes(auth_object = nil)
    %w[buy_at category_id created_at description id id_value name quantity updated_at user_id value]
  end
end
