class CreatePatients < ActiveRecord::Migration[6.0]
  def change
    create_table :patients do |t|
      t.integer :insurancenumber
      t.string :name
      t.integer :quota
      t.integer :discountrate
      t.integer :docotrvisit
      t.date :paionstartdate
      t.date :paionenddate

      t.timestamps
    end
  end
end
