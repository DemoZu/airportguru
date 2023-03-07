class Journey < ApplicationRecord
  belongs_to :user
  belongs_to :flight
  # has_many :users
  # has_many :flights
  # belongs_to :airport, through: :flight
end
