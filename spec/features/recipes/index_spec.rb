require 'rails_helper'

RSpec.describe 'Recipes index' do
  it "displays the recipes user story 1" do
    recipe1 = Recipe.create(name: 'pepper chicken', complexity: 3, genre: 'Sci-Fi')
    recipe2 = Recipe.create(name: 'banana bread', complexity: 4, genre: 'good')

    visit "/recipes"
    expect(current_path).to eq("/recipes")

    expect(page).to have_content('pepper chicken')
    expect(page).to have_content(3)
    expect(page).to have_content('Sci-Fi')
    expect(page).to have_content(recipe2.name)
    expect(page).to have_content(recipe2.complexity)
    expect(page).to have_content(recipe2.genre)
  end
end
