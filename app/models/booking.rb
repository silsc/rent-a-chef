class Booking < ApplicationRecord
  before_create :set_total_price
  belongs_to :user
  belongs_to :chef
  has_one :review, dependent: :destroy

  def set_total_price
    self.total_price = (end_date - start_date).to_i * chef.price
  end
end
