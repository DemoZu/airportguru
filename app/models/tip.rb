class Tip < ApplicationRecord
  belongs_to :user
  belongs_to :tip_category

  validates :title, presence: true
  validates :content, presence: true
  validates :user, presence: true
  validates :tip_category, presence: true
end
