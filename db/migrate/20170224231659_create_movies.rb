class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title

      t.references :showtime
      t.references :auditorium

      t.timestamps null: false
    end
  end
end
