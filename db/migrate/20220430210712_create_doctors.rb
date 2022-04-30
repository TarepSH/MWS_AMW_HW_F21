class CreateDoctors < ActiveRecord::Migration[6.0]
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :Specialty
      t.text :address
      t.integer :phone
      t.boolean :isactive

      t.timestamps
    end
  end
end
