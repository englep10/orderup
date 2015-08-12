class Lunch < ActiveRecord::Base
  belongs_to :user
  belongs_to :seating
  has_many :attendees, dependent: :destroy
end
