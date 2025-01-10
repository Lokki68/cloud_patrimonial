# frozen_string_literal: true

class AlertComponent < ViewComponent::Base
  def initialize(key:, value:)
    @key = key
    @value = value
    @color = init_color(key)
    super
  end

  def init_color(level)
    case level
    when 'success' then 'alert-success'
    when 'error' then 'alert-danger'
    when 'notice' then 'alert-warning'
    else 'alert-info'
    end
  end
end
