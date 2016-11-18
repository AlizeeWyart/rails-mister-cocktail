class Cocktail < ApplicationRecord
  # ASSOCIATION
  has_many :doses, :dependent => :destroy
  has_many :ingredients, :through => :doses
  has_many :reviews, :dependent => :destroy
  # VALIDATION
  validates :name, presence: true, uniqueness: true
  # IMAGE
  has_attachment :photo

end
