require 'rails_helper'

RSpec.describe 'Recipes index' do
  it "displays the recipes" do
    recipe1 = Recipe.create(name: 'pepper chicken', complexity: 3, genre: 'Sci-Fi')

    visit "/recipes"
    expect(current_path).to eq("/recipes")

    expect(page).to have_content('pepper chicken')
    expect(page).to have_content(3)
    expect(page).to have_content('Sci-Fi')
  end
end
