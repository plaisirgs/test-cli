# frozen_string_literal: true

class Recipe
    attr_accessor :name, :id, :area, :ingredients, :instructions
    @@all = []
   

    def initialize(name,id)
        @name = name
        @id = id
        @@all << self
    end

    def self.all
        @@all 
    end

    def display_ingredients
        update = self.ingredients[0...-1].join(", ")
        updated_recipe_ingredients = update + ", and #{self.ingredients[-1]}."
        puts "The ingredients needed for this recipe are " + "#{updated_recipe_ingredients}".downcase
    end

    def display_recipe_area
        puts "This recipe is a part of #{self.area.capitalize} cuisine."
    end    

    def display_instructions
        puts "To prepare this recipe follow these instructions: " 
        print self.instructions.split("\r\n").join(" ")
    end
end

