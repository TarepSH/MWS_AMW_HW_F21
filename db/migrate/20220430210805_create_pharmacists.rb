class CreatePharmacists < ActiveRecord::Migration[6.0]
  def change
    create_table :pharmacists do |t|
      t.string :name
      t.text :address
      t.integer :phone
      t.boolean :isactive

      t.timestamps
    end
  end
end
