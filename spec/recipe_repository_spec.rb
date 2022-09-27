require_relative "../lib/recipe_repository.rb"
require 'dotenv/load'

def reset_recipes_table
  seed_sql = File.read('spec/seeds_recipes.sql')
  connection = PG.connect({ host: ENV['HOST'], dbname: "recipes_directory_test", user: 'postgres', password: ENV['PASSWORD'] })
  connection.exec(seed_sql)
end

RSpec.describe RecipeRepository do
  before(:each) do 
    reset_recipes_table
  end

  it "returns all recipes" do
    repo = RecipeRepository.new
    recipes = repo.all
    expect(recipes.length).to eq 2
    expect(recipes[0].id).to eq "1"
    expect(recipes[0].name).to eq "Pancakes"
  end

  it "returns single Recipe object of specified id" do
    repo = RecipeRepository.new
    recipe = repo.find(2)
    expect(recipe.id).to eq "2"
    expect(recipe.name ).to eq "Pasta"
  end
end