class FacilityCategory < ApplicationRecord
  has_many :facility
  validates :name, presence: true
end
