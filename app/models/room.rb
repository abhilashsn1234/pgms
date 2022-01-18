class Room < ApplicationRecord
  validates :room_type, presence: true
  validates :number_of_beds, presence: true
end
