class Auditorium < ActiveRecord::Base
  has_and_belongs_to_many :movies
  belongs_to :order, foreign_key: :showtime_id
end


