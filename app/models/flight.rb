class Flight < ApplicationRecord
  belongs_to :airport
  belongs_to :journey
  belongs_to :user, through: :journeys

  validates :flight_number, presence: true
  validates :flight_destination, presence: true
  validates :departure_time, presence: true
  validates :flight_status, presence: true
end
