class AddColorOnCategoriesTable < ActiveRecord::Migration[8.0]
  def change
    add_column :categories, :color, :string
  end
end
