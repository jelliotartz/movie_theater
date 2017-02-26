class Movie < ActiveRecord::Base
  has_many :showtimes
  has_and_belongs_to_many :auditoria
  belongs_to :order
end
