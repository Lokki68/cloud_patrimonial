class AddCategoryIdItemsTable < ActiveRecord::Migration[8.0]
  def change
    add_column :items, :category_id, :integer
    add_column :items, :user_id, :integer
  end
end
