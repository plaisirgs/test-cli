# frozen_string_literal: true

class Recipe
    attr_accessor :name
    @@all = []
   

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all 
    end

end


