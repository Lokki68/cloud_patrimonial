# frozen_string_literal: true

class ColorCellComponent < ViewComponent::Base
  def initialize(color:)
    @color = color
  end
end
