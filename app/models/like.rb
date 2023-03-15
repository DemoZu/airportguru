class Like < ApplicationRecord
  belongs_to :tip
  belongs_to :user
  validates :user_id, uniqueness: { scope: :tip_id }
end
