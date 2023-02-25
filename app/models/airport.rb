class Airport < ApplicationRecord
  has_many :flights, dependent: :destroy

  validates :name, presence: true
  validates :iata_name, presence: true, uniqueness: true
  validates :terminal, presence: true
end
