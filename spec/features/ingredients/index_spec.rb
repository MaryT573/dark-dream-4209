require 'rails_helper'

RSpec.describe 'ingredients index' do
  it 'displays list of all ingredients and the number of recipes that use them User story 3' do
    ingredients1 = Ingredient.create(name: 'cheese', cost: 3)
    ingredients2 = Ingredient.create(name: 'bread', cost: 2)
    ingredients3 = Ingredient.create(name: 'banana', cost: 10)
    recipe2 = Recipe.create(name: 'banana bread', complexity: 4, genre: 'good')
    recipe3 = Recipe.create(name: 'grilled cheese', complexity: 2, genre: 'good')
    list3 = RecipeIngredient.create(recipe: recipe2, ingredient: ingredients2)
    list4 = RecipeIngredient.create(recipe: recipe2, ingredient: ingredients3)
    list3 = RecipeIngredient.create(recipe: recipe3, ingredient: ingredients1)
    list4 = RecipeIngredient.create(recipe: recipe3, ingredient: ingredients2)

    visit "/ingredients"
    expect(current_path).to eq("/ingredients")

    expect(page).to have_content("cheese: 1")
    expect(page).to have_content("bread: 2")
    expect(page).to have_content("banana: 1")
  end
end
