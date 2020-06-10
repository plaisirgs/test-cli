require_relative "../recipe_cli"
require_relative "./api"
require 'pry'

class Cli
    def init
        Api.meal_categories
        print_welcome
        user_selection
        run
    end
    
    def run
        display_categories
        category_name = select_category
        Api.get_recipes("strCategory" => category_name)
        display_recipes
        updated_recipe = Api.get_details(select_recipe)
        display_details(updated_recipe)
        print_continue
        continue?(user_input)
    end

    def print_welcome
        puts "Welcome to TheMealDB, please enter in your first name."
    end

    def user_input
        gets.strip
    end

    def user_selection
        puts "Hello, Chef #{user_input.capitalize}! Today you will be able to find a delicious recipe to prepare." 
        puts "To get started, enter the number of the meal category."
    end
      
    def select_category
       raw_input = user_input
       input = raw_input.to_i
        while !input.between?(1, Category.all.length) && input.to_s == raw_input
            puts "Please select again from the available categories."
            display_categories
            raw_input = user_input
            input = raw_input.to_i
        end
        category_name = Category.all[input - 1].name
        puts "You have selected #{category_name}. Here are the available #{category_name} recipes:"
        return category_name
    end
   
   
    def display_categories
        Category.all.each.with_index(1) do |category, i|
          puts "#{i}. #{category.name}"
        end
    end

    def display_recipes
        Recipe.all.each.with_index(1) do |recipe, i|
          puts "#{i}. #{recipe.name}"
        end
    end

    def display_details(updated_recipe)
        puts updated_recipe.ingredients.join(", ")
        puts updated_recipe.area
        puts updated_recipe.instructions
    end
 
    
    def select_recipe
        raw_input = user_input
        input = raw_input.to_i
         while !input.between?(1, Recipe.all.length) && input.to_s == raw_input
             puts "Please select again from the available recipes."
             display_recipes
             raw_input = user_input
             input = raw_input.to_i
         end
        recipe = Recipe.all[input - 1]
        puts "You have selected #{recipe.name}."
        recipe
     end

     def print_continue
        puts "Would you like to continue? (y/n)"
    end

     def continue?(choice)
        if choice == "y"
          puts "Thanks" #test message  
        else
          print_goodbye
          exit
        end
    end

    def print_goodbye
        puts "Thanks for using TheMealDB. Goodbye!"
    end
end