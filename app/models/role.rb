# frozen_string_literal: true

class Role < ApplicationRecord
  NAMES = %w[admin sapeur].freeze

  validates :name, presence: true, inclusion: { in: NAMES }
end
