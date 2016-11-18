# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Ingredient.destroy_all


require 'json'
require 'open-uri'

# Ingredient.create(name: "lemon")
# Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")

url = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredients_hash = JSON.parse(open(url).read)

ingredients_hash["drinks"].each do |element|
  ingredient_name = element["strIngredient1"]
  Ingredient.create(name: ingredient_name)
end



Cocktail.destroy_all

## CREATE MOJITO
mojito = Cocktail.create(name: "Mojito", description: "Cocktail à base de rhum né à Cuba dans les années 1910 et inspiré du mint julep")
mojito.photo_url = "http://josephcphillips.com/wp-content/uploads/2015/04/tray-of-mojitos.jpg"
mojito.save

## CREATE SEX AND THE BEACH
sex_and_beach = Cocktail.new(name: "Sex and the Beach", description: "Cocktail incontournable cree en 1980 au Balaboa Cafz de San Francisco")
sex_and_beach.photo_url = "http://stevethebartender.com.au/wp-content/uploads/2013/06/sex-on-the-beach-cocktail.jpg"
sex_and_beach.save
