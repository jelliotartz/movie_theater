class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string      :name
      t.string      :email
      t.integer     :credit_card_number
      t.date        :expiration_date

      t.references  :movie
      t.references  :showtime
      t.references  :auditorium

      t.timestamps null: false
    end
  end
end
