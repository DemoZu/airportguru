class MeetupCategory < ApplicationRecord
 # has_many :meetups, dependent: :destroy
  belongs_to :meetup
end
