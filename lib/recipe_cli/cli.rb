
class Cli 

    class TypeError < StandardError
        def message
           puts "Unfortunately, you have selected a category that does not exist. Please select from one of the available 11 categories." 
        end 
      end  
      
      class TypeError < StandardError
        def message
           puts "Unfortunately, you have selected the number of a recipe that does not exist. Please select from the available options."  
        end 
      end  
      

    def greeting
        puts "Welcome to TheMealDB, please enter in your first name."
        user_input = gets.chomp
        puts "Hello, Chef #{user_input.capitalize}! Today you will be able to find a delicious recipe." 
        puts "To get started, enter the number of the meal category."
        user_input = gets.chomp
            if !CATEGORIES.include?(user_input)
                begin
                    raise TypeError
                rescue TypeError => error
                    puts error.message
                end
            else 
                puts "You have selected #{user_input.downcase}. Enter the number of the recipe to receive the ingredients needed and instructions to prepare the dish."
            end
        user_input = gets.chomp
            if !RECIPES.include?(user_input)
                begin
                    raise TypeError_Two
                rescue TypeError => error
                    puts error.message
                end 
                #The options have to reload/reappear
            else 
                user_input = gets.chomp.split(" ").each {|word| word.capitalize!}.join(" ")
                puts "#{user_input} is part of Italian cuisine."  #Italian here is just an example
            end
        end
end
    
