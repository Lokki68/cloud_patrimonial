# frozen_string_literal: true

class SearchCardComponent < ViewComponent::Base
  def initialize(queries:, search_path:, categories:)
    @q = queries
    @search_path = search_path
    @categories = categories
  end
end
