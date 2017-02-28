class CreateShowtimes < ActiveRecord::Migration
  def change
    create_table :showtimes do |t|
      t.datetime :time
      t.integer  :tickets_sold, :default => 0

      t.references :movie, null: false
      t.references :auditorium, null: false

      t.timestamps null: false
    end
  end
end
