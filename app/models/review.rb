class Review < ApplicationRecord
  belongs_to :cocktail

  validates :rating, presence: true
  validates :rating, inclusion: { in: (0..5).to_a,
    message: "%{value} is not a correct rate" }
  validates :rating, numericality: { only_integer: true }
end
