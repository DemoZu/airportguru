class Journey < ApplicationRecord
  belongs_to :user
  belongs_to :flight
  # belongs_to :airport, through: :flight
end
