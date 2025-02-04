# frozen_string_literal: true

class ItemDocument < ApplicationRecord
  belongs_to :item

  has_one_attached :invoice_pdf

  validates :invoice_pdf, presence: true
end
