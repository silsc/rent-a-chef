class Chef < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings

  CATEGORIES = ["Dessert", "Asian", "Italian", "Vegetarian", "Fast Food"]

  has_many_attached :photos
  has_one_attached :avatar

  validates :name, :price, presence: true
  validates :category, inclusion: {in: CATEGORIES}

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  include PgSearch::Model
  pg_search_scope :search_by_location,
    against: [:location],
    using: {
      tsearch: { prefix: true }
    }

  def category_check(params)
    CATEGORIES.include?(params)
  end
end
