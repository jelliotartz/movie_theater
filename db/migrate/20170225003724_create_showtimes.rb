class CreateShowtimes < ActiveRecord::Migration
  def change
    create_table :showtimes do |t|
      t.datetime :time_of_show

      t.timestamps null: false
    end
  end
end
