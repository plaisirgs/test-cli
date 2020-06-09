# frozen_string_literal: true

class Recipe
    attr_accessor :name, :id, :ingredients, :instructions, :area 
    @@all = []
   

    def initialize(name, id)
        @name = name
        @id = id
        @ingredients = ingredients
        @instructions = instructions
        @area = area
        @@all << self
    end

    def self.all
        @@all 
    end

end


