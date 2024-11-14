class CreateDoctors < ActiveRecord::Migration[8.0]
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :specialization
      t.string :email
      t.string :phone_number

      t.timestamps
    end
  end
end
