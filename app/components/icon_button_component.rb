# frozen_string_literal: true

class IconButtonComponent < ViewComponent::Base
  def initialize(title:, icon:, path:, delete: false, classes: '', turbo: false)
    @title = title
    @icon = icon
    @path = path
    @classes = classes
    @data = set_data(delete: delete, turbo: turbo)
    super
  end

  private

  def set_data(delete: false, turbo: false)
    return { turbo_method: :delete, turbo_confirm: 'Voulez-vous vraiment supprimer ?' } if delete

    return unless turbo

    { turbo_frame: turbo }
  end
end
