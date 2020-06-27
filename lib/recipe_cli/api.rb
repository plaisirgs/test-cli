require_relative "./cli"
require 'pry'

class Api
    
    BASE_URL = 'https://www.themealdb.com/api/json/v1/1/'
    
    def self.meal_categories
        res = RestClient.get(BASE_URL + 'categories.php')
        data = JSON.parse(res.body)
        data["categories"].each do |category|
            unless category["strCategory"] == "Miscellaneous" || category["strCategory"] == "Side" || category["strCategory"] == "Starter"
                category = Category.new(category["strCategory"]) 
                get_recipes(category)
            end
        end
    end 

    def self.get_recipes(category)
        res = RestClient.get(BASE_URL + "filter.php?c=#{category.name}")  
        data = JSON.parse(res.body)
        data["meals"].each do |meal|
            recipe = Recipe.new(meal["strMeal"], meal["idMeal"])
            category.recipes << recipe
        end  
        Recipe.find_by_name("curry")
    end

    def self.get_details(recipe)
        recipe_ingredients = []
        res = RestClient.get(BASE_URL + "lookup.php?i=#{recipe.id}")
        data = JSON.parse(res.body) 
        meal_details = data["meals"].first
        (1..20).each do |i|
           unless meal_details["strIngredient#{i}"] == "" || !meal_details["strIngredient#{i}"] 
            recipe_ingredients << meal_details["strIngredient#{i}"]
           end
        end
        recipe.ingredients = recipe_ingredients
        recipe.area = meal_details["strArea"]
        recipe.instructions = meal_details["strInstructions"]
        recipe
    end
end 
