class ChangeDefaultValueStatusUser < ActiveRecord::Migration[8.0]
  def change
    change_column :users, :status, :string, default: "active"
  end
end
