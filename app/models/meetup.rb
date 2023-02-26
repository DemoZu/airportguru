class Meetup < ApplicationRecord
  belongs_to :user
  has_one :meetup_category
end
