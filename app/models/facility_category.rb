class FacilityCategory < ApplicationRecord
  belongs_to :facility

  validates :name, presence: true
end
