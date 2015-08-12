class Seating < ActiveRecord::Base
  belongs_to :restaurant
  has_many :lunches
end
