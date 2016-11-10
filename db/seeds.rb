# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'




1..7.times {
  Recipe.create(name:Faker::Hipster.sentence, description: Faker::Hipster.paragraph)
}

Recipe.all.each {|recipe|
  4.times {
    recipe.ingredients.create(name:Faker::Food.ingredient, amount:Faker::Food.measurement)
    recipe.ingredients.create(name:Faker::Food.spice, amount:Faker::Food.measurement)
  }
}


@struggle_puffs = Recipe.create(name:"struggle puffs", description:"breakfast in Trump's America")
@struggle_puffs.ingredients.create(name:"rocks", amount:"fist full")
@struggle_puffs.ingredients.create(name:"water", amount:"2 cups")
