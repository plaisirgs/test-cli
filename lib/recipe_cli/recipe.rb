# frozen_string_literal: true

class Recipe
    attr_accessor :name, :id, :area, :ingredients, :instructions
    @@all = []
   

    def initialize(name, id)
        @name = name
        @id = id
        @area = area
        @ingredients = ingredients
        @instructions = instructions
        @@all << self
    end

    def self.all
        @@all 
    end

end


