class CreateFoods < ActiveRecord::Migration[8.0]
  def change
    create_table :foods do |t|
      t.references :meal, null: false, foreign_key: true
      t.string :name
      t.float :quantity
      t.string :unit
      t.integer :calories
      t.float :protein
      t.float :carbohydrates
      t.float :fat

      t.timestamps
    end
  end
end
