class Movie < ActiveRecord::Base
  has_many :showtimes
  has_many :orders, through: :showtimes
  has_and_belongs_to_many :auditoria

  # accepts_nested_attributes_for :orders
end
