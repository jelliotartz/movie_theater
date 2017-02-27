class Order < ActiveRecord::Base
  belongs_to :showtime

  accepts_nested_attributes_for :showtime
end
