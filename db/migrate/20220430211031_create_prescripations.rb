class CreatePrescripations < ActiveRecord::Migration[6.0]
  def change
    create_table :prescripations do |t|
      t.references :pharmacist, null: false, foreign_key: true
      t.references :patient, null: false, foreign_key: true
      t.references :drug, null: false, foreign_key: true
      t.date :dateofpresc

      t.timestamps
    end
  end
end
