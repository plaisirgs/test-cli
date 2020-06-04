require_relative "../recipe_cli"
require_relative "./api"
require 'pry'

class Cli
    def init
        Api.meal_categories
        print_welcome
        user_selection
        display_categories
        Api.get_category(category)
        
        
    end

    def print_welcome
        puts "Welcome to TheMealDB, please enter in your first name."
    end

    def user_input
        input = gets.strip
    end

    def user_selection
        puts "Hello, Chef #{user_input.capitalize}! Today you will be able to find a delicious recipe to prepare." 
        puts "To get started, enter the number of the meal category."
    end
      
    def select_category
       input = user_input.to_i
        while !input.between?(1, Category.all.length) 
            puts "Please select again from the available categories."
            display_categories
            input = user_input.to_i
        end
        puts "You have selected #{Category.all[input - 1].name}. Here are the available #{Category.all[input - 1].name} recipes:"
    end
   
   
    def display_categories
        Category.all.each.with_index(1) do |category, i|
          puts "#{i}. #{category.name}"
        end
    end



end