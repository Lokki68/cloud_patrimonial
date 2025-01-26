# frozen_string_literal: true

module Table
  class CategoryCellComponent < ViewComponent::Base
    def initialize(category_id:)
      @category = Category.find category_id
    end
  end
end
