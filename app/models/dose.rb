class Dose < ApplicationRecord
  # ASSOCIATION
  belongs_to :cocktail
  belongs_to :ingredient
  # VALIDATION
  validates :ingredient_id, uniqueness: { scope: :cocktail_id }
  validates :description, presence: true
end
