class CreateClients < ActiveRecord::Migration[8.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.integer :age
      t.string :email
      t.references :doctor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
