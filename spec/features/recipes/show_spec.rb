require 'rails_helper'

RSpec.describe 'Recipes show' do
  it "shows a list of ingredients for the recipe user story 2" do
    ingredients1 = Ingredient.create(name: 'cheese', cost: 3)
    ingredients2 = Ingredient.create(name: 'bread', cost: 2)
    recipe3 = Recipe.create(name: 'grilled cheese', complexity: 2, genre: 'good')
    list3 = RecipeIngredient.create(recipe: recipe3, ingredient: ingredients1)
    list4 = RecipeIngredient.create(recipe: recipe3, ingredient: ingredients2)

    visit "/recipes/#{recipe3.id}"
    expect(current_path).to eq("/recipes/#{recipe3.id}")

    expect(page).to have_content('cheese')
    expect(page).to have_content('bread')
  end
end
