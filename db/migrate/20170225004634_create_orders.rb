class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer     :amount
      t.string      :name
      t.string      :email
      t.integer     :credit_card_number, :limit => 16
      t.date        :expiration_date

      t.references  :showtime, null: false

      t.timestamps null: false
    end
  end
end
