class Facility < ApplicationRecord
  belongs_to :airport
  has_one :facility_categories, dependent: :destroy
end
