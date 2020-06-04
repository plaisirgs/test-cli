require_relative "./cli"
require 'pry'

class Api
    attr_accessor :categories, :meals
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

    def self.get_category(category)
        res = RestClient.get(BASE_URL + 'filter.php?' + "c=#{category}")
        data = JSON.parse(res.body)
        data["meals"].each do |meal|
            puts "#{meal.name}
        binding.pry
        end
    end
end

