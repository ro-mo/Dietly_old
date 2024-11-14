class CreateDiets < ActiveRecord::Migration[8.0]
  def change
    create_table :diets do |t|
      t.references :client, null: false, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.string :goal

      t.timestamps
    end
  end
end
