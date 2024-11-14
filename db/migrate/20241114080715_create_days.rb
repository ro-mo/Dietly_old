class CreateDays < ActiveRecord::Migration[8.0]
  def change
    create_table :days do |t|
      t.references :diet, null: false, foreign_key: true
      t.date :date

      t.timestamps
    end
  end
end
