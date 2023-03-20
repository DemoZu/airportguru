class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  after_commit :add_default_avatar, on: %i[create update]

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :avatar
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

  def avatar_thumbnail
    avatar.variant(resize_to_limit: [80, 80]).processed
  end

  def chat_avatar
    avatar.variant(resize_to_limit: [50, 50]).processed
  end

  private

  def add_default_avatar
    return if avatar.attached?

    avatar.attach(
      io: File.open(Rails.root.join('app', 'assets', 'images', 'default_avatar.jpg')),
      filename: 'default_avatar.jpg',
      content_type: 'image/jpg'
    )
  end
end
