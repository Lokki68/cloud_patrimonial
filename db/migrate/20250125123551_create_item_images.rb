class CreateItemImages < ActiveRecord::Migration[8.0]
  def change
    create_table :item_images do |t|
      t.integer :item_id, null: false

      t.timestamps
    end
  end
end
