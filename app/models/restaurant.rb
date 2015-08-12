class Restaurant < ActiveRecord::Base
  has_many :seatings, dependent: :destroy
  has_many :lunches, through: :seatings
end
