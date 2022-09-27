# Recipe Model and Repository Classes Design Recipe

## 1. Design and create the Table

## 2. Create Test SQL seeds

## 3. Define the class names

```ruby
class Recipe
end

class RecipeRepository
end
```

## 4. Implement the Model class

```ruby

class Recipe
  attr_accessor :id, :name, :average_cooking_time, :rating
end
```

## 5. Define the Repository Class interface

```ruby
class RecipeRepository

  # Selecting all records
  # No arguments
  def all
    # Executes the SQL query:
    # SELECT id, name, cohort_name FROM students;

    # Returns an array of Student objects.
  end

  # Gets a single record by its ID
  # One argument: the id (number)
  def find(id)
    # Executes the SQL query:
    # SELECT id, name, cohort_name FROM students WHERE id = $1;

    # Returns a single Student object.
  end

end
```

## 6. Write Test Examples

```ruby
# 1
# Get all recipes

repo = RecipeRepository.new

recipes = repo.all

recipes.length # =>  2
recipes[0].id # =>  "1"
recipes[0].name # =>  "Pancakes"

# 2
# Get a single recipe

repo = RecipeRepository.new

recipe = repo.find(2)

recipe.id  # => "2"
recipe.name  # => "Pasta"
```

## 7. Reload the SQL seeds before each test run


## 8. Test-drive and implement the Repository class behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._