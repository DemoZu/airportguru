class Facility < ApplicationRecord
  belongs_to :airport
  has_many :facility_categories, dependent: :destroy
end
