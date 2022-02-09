class Room < ApplicationRecord
  has_many :customers, dependent: :destroy
  validates :room_type, presence: true
  validates :number_of_beds, presence: true
end
