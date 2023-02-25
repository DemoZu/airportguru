class TipCategory < ApplicationRecord
  belongs_to :tip
  # belongs_to :category

  validates :name, presence: true
end
