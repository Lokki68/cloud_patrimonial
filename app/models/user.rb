# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  belongs_to :role

  validates :email, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true

  state_machine :status, initial: :active do
    event :deactivate do
      transition active: :inactive
    end

    event :activate do
      transition inactive: :active
    end
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def initials
    "#{first_name.first}#{last_name.first}"
  end
end
