class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :overview
      t.string :poster
      t.date :relese
      t.integer :revenue
      t.integer :runtime
      t.integer :budget
      t.string :language
      t.integer :vote

      t.timestamps
    end
  end
end
