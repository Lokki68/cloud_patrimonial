# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  allow_browser versions: :modern
  before_action :set_variables

  def set_variables
  @title = ENV['APP_TITLE']
  end
end
