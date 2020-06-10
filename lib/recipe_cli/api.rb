require_relative "./cli"
require 'pry'

class Api
    
    BASE_URL = 'https://www.themealdb.com/api/json/v1/1/'
    
    def self.meal_categories
        res = RestClient.get(BASE_URL + 'categories.php')
        data = JSON.parse(res.body)
        data["categories"].each do |category|
            if category["strCategory"] == "Miscellaneous" || category["strCategory"] == "Side" || category["strCategory"] == "Starter"
                next 
            else
                new_category = Category.new(category["strCategory"])
            end
        end
    end 

    def self.get_recipes(category)
        res = RestClient.get(BASE_URL + "filter.php?c=#{category["strCategory"]}")  
        data = JSON.parse(res.body)
        data["meals"].each do |meal|
            new_recipe = Recipe.new(meal["strMeal"], meal["idMeal"])
        end
    end

    def self.get_details(recipe)
        recipe_ingredients = []
        res = RestClient.get(BASE_URL + "lookup.php?i=#{recipe.id}")
        data = JSON.parse(res.body) 
        meal_details = data["meals"].first
        (1..20).each do |i|
           if meal_details["strIngredient#{i}"] == "" || meal_details["strIngredient#{i}"] == nil
            next
           else
            recipe_ingredients << meal_details["strIngredient#{i}"]
           end
        end
        recipe.ingredients = recipe_ingredients
        recipe.area = meal_details["strArea"]
        recipe.instructions = meal_details["strInstructions"]
        recipe
    end
end 
