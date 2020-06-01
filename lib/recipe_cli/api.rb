# frozen_string_literal: true
require 'pry'
class Api
    attr_accessor :categories
    BASE_URL = 'https://www.themealdb.com/api/json/v1/1/'
    
    def meal_categories
        @categories = []
        category_number = 1
        res = RestClient.get(BASE_URL + 'categories.php')
        data = JSON.parse(res.body)
        binding.pry
        data["categories"].each do |category|
        if category["strCategory"] == "Miscellaneous" || category["strCategory"] == "Side" || category["strCategory"] == "Starter"
           next 
        else
            new_category = Category.new(category['strCategory'], category['strCategoryThumb'])
            @categories << new_category
        )
        @categories << category_number.to_s + ". " + category["strCategory"] 
        category_number += 1
        end
        end 
        @categories
    end

    def recipe_from_meal_id(idMeal) #when I entered in the number here for idMeal it works in the terminal
        res = RestClient.get(BASE_URL + 'lookup.php?i=' + "#{idMeal}") 
        data = JSON.parse(res.body)
        data["meals"].each do |meal|
        meal["idMeal"]
    end
end
  
    #What will be displayed to the user:


end

class Category
 attr_accessor :name, :picture
 @@all = []

 def initialize(name, picture)
    @name = name 
    @picture = picture 
    @@all << self 
 end 




end
#Meal Categories -> Category -> Meal ID
#provides data for CLI
# Project Outline
# 1. display categories
# 2. user selects categories, categories is passed to Api to make meal_by_category call
# 3. return data is used to instantiate recipe objects with name and ID, recipe obj are save in @@all
# 4. Using Recipe.all, display the recipe names to the user
# 5. User selects a recipe by number, that number input is used to find the corresponding recipe obj in the @@all Array
# 6. Pass the corresponding recipe object into the Api.meal_details_by_id to make an api call for recipe details to be used to update recipe object 
