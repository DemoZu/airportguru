class Tip < ApplicationRecord
  belongs_to :user
  has_one :tip_category, dependent: :destroy

  validates :title, presence: true
  validates :content, presence: true
  validates :user, presence: true
  # validates :tip_category, presence: true
end
