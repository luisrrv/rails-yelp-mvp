class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true
  RATINGS = [0, 1, 2, 3, 4, 5]
  validates :rating, presence: true, inclusion: { in: RATINGS }, numericality: { only_integer: true }
  # enum rating: { zero: 0, one: 1, two: 2, three: 3, four: 4, five: 5 }
end
