# frozen_string_literal: true

class Api
    BASE_URL = 'https://www.themealdb.com/api/json/v1/1/'

    def meal_categories
        categories = []
        category_number = 1
        res = RestClient.get(BASE_URL + 'categories.php')
        data = JSON.parse(res.body)
        data["categories"].each do |category|
        if category["strCategory"] == "Miscellaneous" || category["strCategory"] == "Side" || category["strCategory"] == "Starter"
           next 
        else
           binding.pry
        categories << category_number.to_s + ". " + category["strCategory"] 
        category_number += 1
        end
        end 
        categories
    end

    def meal_from_meal_id(meal_id)
        #
    end

    def 

end

#Meal Categories -> Category -> Meal ID
#provides data for CLI
