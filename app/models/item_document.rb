# frozen_string_literal: true

class ItemDocument < ApplicationRecord
  belogs_to :item

  has_one_attached :document

  validates :item_id, numericality: true
  validates :document, presence: true
end
