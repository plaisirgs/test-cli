# require_relative "../recipe_cli"
# require_relative "./api"
# require 'pry'
# class Cli 

    # class CategoryError < StandardError
    #     def message
    #        puts "Unfortunately, you have selected a category that does not exist. Please select from one of the available 11 categories." 
    #     end 
    #   end  
      
    #   class RecipeError < StandardError
    #     def message
    #        puts "Unfortunately, you have selected the number of a recipe that does not exist. Please select from the available options."  
    #     end 
    #   end  
    # begin
                #     raise TypeError
                # rescue CategoryError => error
                #     puts error.message
                # end
                #The options have to reload/reappear
            # else 
      
# categories = api.meal_categories # 0, 1, 2....

#     def greeting
#         api = Api.new
#         api.meal_categores
#         Category.all
#         display_categories(Category.all)
#         # binding.pry
#         puts "Welcome to TheMealDB, please enter in your first name."
#         user_input = gets.chomp
#         puts "Hello, Chef #{user_input.capitalize}! Today you will be able to find a delicious recipe." 
#         puts "To get started, enter the number of the meal category."
#         display_categories(api.meal_categories)
#         user_input = gets.chomp.to_i  # if they enter text, it will be converted to a zero and fail the while condition, thus they have to enter another number
#             while !user_input.between?(1,api.meal_categories.length) 
#                 puts "Unfortunately, you have selected a category that does not exist. Please select from one of the available 11 categories." 
#                 puts "To get started, enter the number of the meal category."
#                 display_categories(api.meal_categories)
#                 user_input = gets.chomp    
#             end
#             #use_input is a number, that refers to the index of categories "1. category name"
#             puts "Your selected category is #{categories[user_input - 1]}"
#             #display recipes here API call
#             puts "Choose a recipe"
#             user_input = gets.chomp
#             #while !api.recipes.include?(user_input)
#                 puts "Unfortunately, you have selected the number of a recipe that does not exist. Please select from the available options."  
#                 puts "Choose a recipe"
#                 user_input = gets.chomp #to string 
#                 puts "#{recipies[user_input -1].name}  is part of Italian cuisine."  #Italian here is just an example
#     end

#             #display meal instructions, ingredients, etc. 
        
#     def display_categories(categories)
#         categories.each do |category|
#             puts "#{index + 1}. #{category.name}\n Link to phone: #{category.picture}"
#         end
#     end
# end
    


# cli = Cli.new
# cli.greeting