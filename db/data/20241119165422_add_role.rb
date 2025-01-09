# frozen_string_literal: true

class AddRole < ActiveRecord::Migration[7.2]
  def up
    Role.create name: 'admin'
    Role.create name: 'sapeur'
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
