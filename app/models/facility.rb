class Facility < ApplicationRecord
  belongs_to :airport
  has_one :facility_category, dependent: :destroy
end
