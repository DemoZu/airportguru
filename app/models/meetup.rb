class Meetup < ApplicationRecord
  belongs_to :user
  belongs_to :meetup_category
end
