class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer     :amount
      t.string      :name
      t.string      :email
      t.string      :credit_card_number
      t.date        :expiration_date

      t.references  :showtime, null: false

      t.timestamps null: false
    end
  end
end
