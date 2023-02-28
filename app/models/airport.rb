class Airport < ApplicationRecord
  has_many :flights, dependent: :destroy
  has_many :facilities, dependent: :destroy
  # has_many :journeys, dependent: :destroy

  validates :name, presence: true
  validates :iata_name, presence: true
  # validates :terminal, presence: true
end
