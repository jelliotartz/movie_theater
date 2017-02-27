class Order < ActiveRecord::Base
  belongs_to :showtime
  accepts_nested_attributes_for :showtime

  validates_date :expiration_date, :after => lambda { Date.current }
  validates_formatting_of :email, :using => :email
  validates_formatting_of :credit_card_number, :using => :credit_card
end
