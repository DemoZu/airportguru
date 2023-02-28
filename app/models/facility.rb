class Facility < ApplicationRecord
  belongs_to :airport
  belongs_to :facility_category
  # has_one :facility_category, dependent: :destroy
end
