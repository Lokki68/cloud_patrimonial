class CreateItems < ActiveRecord::Migration[8.0]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.date :buy_at
      t.integer :value
      t.integer :quantity

      t.timestamps
    end
  end
end
