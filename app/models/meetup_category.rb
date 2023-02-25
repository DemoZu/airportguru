class MeetupCategory < ApplicationRecord
  has_many :meetups, dependent: :destroy
end
