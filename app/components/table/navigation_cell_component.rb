# frozen_string_literal: true

module Table
  class NavigationCellComponent < ViewComponent::Base
    def initialize(title:, path:, classes: '')
      @title = title
      @path = path
      @classes = classes
    end
  end
end
