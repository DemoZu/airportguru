class Tip < ApplicationRecord
  belongs_to :user
  belongs_to :tip_category
  belongs_to :airport

  # has_one :tip_category, dependent: :destroy
  has_many :likes, dependent: :destroy
  validates :title, presence: true
  validates :content, presence: true
  validates :user, presence: true
  # validates :tip_category, presence: true
end
