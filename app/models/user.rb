class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :journeys, dependent: :destroy
  # has_many :flights
  has_many :flights, through: :journeys
  has_many :meetups, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_many :tips, dependent: :destroy

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :nickname, presence: true, uniqueness: true
  validates :bio, presence: true
end
