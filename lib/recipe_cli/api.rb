# frozen_string_literal: true
require 'pry'
class Api
    attr_accessor :categories
    BASE_URL = 'https://www.themealdb.com/api/json/v1/1/'
    
    def meal_categories
        res = RestClient.get(BASE_URL + 'categories.php')
        data = JSON.parse(res.body)
        data["categories"].each do |category|
            if category["strCategory"] == "Miscellaneous" || category["strCategory"] == "Side" || category["strCategory"] == "Starter"
            next 
            else
                new_category = Category.new(category['strCategory'], category['strCategoryThumb'])
            end
        end 
    end

    # def recipe_from_meal_id(idMeal) #when I entered in the number here for idMeal it works in the terminal
    #     res = RestClient.get(BASE_URL + 'lookup.php?i=' + "#{idMeal}") 
    #     data = JSON.parse(res.body)
    #     data["meals"].each do |meal|
    #     meal["idMeal"]
    #     end
    # end
end
  
  
