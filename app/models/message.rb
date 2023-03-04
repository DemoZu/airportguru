class Message < ApplicationRecord
  belongs_to :chatroom
  belongs_to :user
  belongs_to :meetup

  def sender?(a_user)
    user.id == a_user.id
  end
end
