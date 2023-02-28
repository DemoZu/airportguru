class Meetup < ApplicationRecord
  belongs_to :user
  belongs_to :airport
  belongs_to :meetup_category
end
