require_relative 'lib/database_connection'
require_relative 'lib/recipe_repository.rb'

# We need to give the database name to the method `connect`.
DatabaseConnection.connect('recipes_directory')

recipe_repository = RecipeRepository.new

recipe_repository.all.each { |record| 
  puts "#{record.id} - #{record.name} 
  takes #{record.average_cooking_time} to cook
  with rating of #{record.rating}"
}