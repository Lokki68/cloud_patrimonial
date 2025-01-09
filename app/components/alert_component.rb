# frozen_string_literal: true

class AlertComponent < ViewComponent::Base
  def initialize(title:, message:, level:)
    @title = title
    @message = message
    @classes = init_classes(level)
    super
  end

  def init_classes(level)
    case level
    when 'danger' then 'bg-red-100 border-red-500 text-red-700'
    when 'info' then 'bg-orange-100 border-orange-500 text-orange-700'
    else 'bg-green-100 border-green-500 text-green-700'
    end
  end
end
