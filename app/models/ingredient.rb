class Ingredient < ApplicationRecord
  # ASSOCIATION
  has_many :doses
  has_many :cocktails, :through => :doses
  # VALIDATION
  validates :name, presence: true, uniqueness: true
end
