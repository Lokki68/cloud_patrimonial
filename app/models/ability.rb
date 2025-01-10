# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    if user.role?('admin')
      can :manage, :all
    elsif user.role?('utilisateur')
      can :read, :all
    end
  end
end
