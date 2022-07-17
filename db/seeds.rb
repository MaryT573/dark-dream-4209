# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
RecipeIngredient.destroy_all
Ingredient.destroy_all
Recipe.destroy_all

ingredients1 = Ingredient.create(name: 'cheese', cost: 3)
ingredients2 = Ingredient.create(name: 'bread', cost: 2)
ingredients3 = Ingredient.create(name: 'banana', cost: 10)
ingredients4 = Ingredient.create(name: 'chicken', cost: 4)
ingredients5 = Ingredient.create(name: 'salt', cost: 7)
ingredients6 = Ingredient.create(name: 'pepper', cost: 2)

recipe1 = Recipe.create(name: 'pepper chicken', complexity: 3, genre: 'Sci-Fi')
recipe2 = Recipe.create(name: 'banana bread', complexity: 4, genre: 'good')
recipe3 = Recipe.create(name: 'grilled cheese', complexity: 2, genre: 'good')

list1 = RecipeIngredient.create(recipe: recipe1, ingredient: ingredients4)
list2 = RecipeIngredient.create(recipe: recipe1, ingredient: ingredients6)
list3 = RecipeIngredient.create(recipe: recipe2, ingredient: ingredients2)
list4 = RecipeIngredient.create(recipe: recipe2, ingredient: ingredients3)
list3 = RecipeIngredient.create(recipe: recipe3, ingredient: ingredients1)
list4 = RecipeIngredient.create(recipe: recipe3, ingredient: ingredients2)
