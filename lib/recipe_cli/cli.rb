require_relative "../recipe_cli"
require_relative "./api"
require 'pry'

class Cli 
    def init
        api = Api.new
        print_welcome
        choose_recipe
        select_category
    end

    def print_welcome
        puts "Welcome to TheMealDB, please enter in your first name."
    end

    def user_input
        input = gets.strip
    end

    def choose_recipe
        puts "Hello, Chef #{user_input.capitalize}! Today you will be able to find a delicious recipe to prepare." 
        puts "To get started, enter the number of the meal category."
    end

    def select_category
        Category.all
    end

    # def run
    #     puts "Hello, Chef #{get_input.capitalize}! Today you will be able to find a delicious recipe to prepare." 
    #     puts "To get started, enter the number of the meal category."
    #     # display_categories(api.meal_categories)
    #     user_input = gets.chomp.to_i  # if they enter text, it will be converted to a zero and fail the while condition, thus they have to enter another number
    #         while !user_input.between?(1,Category.all.length) 
    #             puts "Unfortunately, you have selected a category that does not exist. Please select from one of the available categories." 
    #             puts "To get started, enter the number of the meal category."
    #             api.meal_categories
    #              # display_categories
    #             user_input = get_input.to_i    
    #         end
    #         puts "Your selected category is #{Category.all[user_input - 1]}"
    #         #display recipes here API call
    #         puts "Please enter the number of the recipe you would like to see displayed."
    #         user_input = gets.chomp
    #         #while !api.recipes.include?(user_input)
    #             puts "Unfortunately, you have selected the number of a recipe that does not exist. Please select from the available options."  
    #             puts "Choose a recipe"
    #             user_input = gets.chomp #to string 
    #             puts "#{recipes[user_input -1].name}  is part of Italian cuisine."  #Italian here is just an example
    # end

   
        
    # def display_categories(categories)
    #     categories.each do |category|
    #         puts "#{index + 1}. #{category.name}\n Link to phone: #{category.picture}"
    #     end
    # end
end
    
