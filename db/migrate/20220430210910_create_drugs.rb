class CreateDrugs < ActiveRecord::Migration[6.0]
  def change
    create_table :drugs do |t|
      t.string :name
      t.text :composition
      t.integer :price

      t.timestamps
    end
  end
end
