class Cocktail < ApplicationRecord
  # ASSOCIATION
  has_many :doses, :dependent => :destroy
  has_many :ingredients, :through => :doses
  # VALIDATION
  validates :name, presence: true, uniqueness: true

end
