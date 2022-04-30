class CreateDoctorVisits < ActiveRecord::Migration[6.0]
  def change
    create_table :doctor_visits do |t|
      t.references :doctor, null: false, foreign_key: true
      t.references :patient, null: false, foreign_key: true
      t.text :disease
      t.integer :fee
      t.date :dateofvisit

      t.timestamps
    end
  end
end
