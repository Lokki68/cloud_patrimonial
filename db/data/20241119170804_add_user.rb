# frozen_string_literal: true

class AddUser < ActiveRecord::Migration[7.2]
  def up
    password = 'Abcd1234!'
    User.create email: 'bricel67@gmail.com', password: password, password_confirmation: password, role: Role.find_by_name('admin'), first_name: 'Brice', last_name: 'Libert'
    User.create email: 'sapeur68@gmail.com', password: password, password_confirmation: password, role: Role.find_by_name('sapeur'), first_name: 'Serge', last_name: 'Serge'
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
