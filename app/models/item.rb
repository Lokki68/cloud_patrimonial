# frozen_string_literal: true

class Item < ApplicationRecord
  belongs_to :user
  belongs_to :category

  validates :name, presence: true
  validates :description, presence: true
  validates :quantity, numericality: { greater_than: 0 }
  validates :value, numericality: { greater_than: 0 }
end
