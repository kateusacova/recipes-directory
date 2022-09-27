require_relative "../lib/database_connection.rb"
require_relative "../lib/recipe.rb"

class RecipeRepository
  def all
    query = "SELECT id, name, average_cooking_time, rating FROM recipes;"
    params = []
    result = DatabaseConnection.exec_params(query, params)
    recipes = []
    result.each { |record| 
      recipe = Recipe.new
      recipe.id = record["id"]
      recipe.name = record["name"]
      recipe.average_cooking_time = record["average_cooking_time"]
      recipe.rating = record["rating"]
      recipes << recipe
    }
    recipes
  end

  
  def find(id)
    query = "SELECT id, name, average_cooking_time, rating FROM recipes WHERE id = $1;"
    params = [id]
    result = DatabaseConnection.exec_params(query, params)
    record = result[0]
    
    recipe = Recipe.new
    recipe.id = record["id"]
    recipe.name = record["name"]
    recipe.average_cooking_time = record["average_cooking_time"]
    recipe.rating = record["rating"]

    recipe
  end

end