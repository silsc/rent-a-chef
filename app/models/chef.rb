class Chef < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings
  has_one_attached :photo
  has_one_attached :avatar

  validates :name, :price, presence: true
end
