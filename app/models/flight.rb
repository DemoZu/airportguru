class Flight < ApplicationRecord
  belongs_to :airport
  has_many :journeys
  has_many :users, through: :journeys
  # belongs_to :user, through: :journey

  validates :flight_number, presence: true
  validates :flight_destination, presence: true
  validates :departure_time, presence: true
  validates :flight_status, presence: true
end
