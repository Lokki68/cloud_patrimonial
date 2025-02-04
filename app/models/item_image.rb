# frozen_string_literal: true

class ItemImage < ApplicationRecord
  belongs_to :item

  has_one_attached :image

  validates :item_id, numericality: true
  validates :image, presence: true
end
