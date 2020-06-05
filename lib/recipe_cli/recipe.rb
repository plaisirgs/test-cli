# frozen_string_literal: true

class Recipe
    attr_accessor :name, :id
    @@all = []
   

    def initialize(name, id)
        @name = name
        @id = id
        @@all << self
    end

    def self.all
        @@all 
    end

end


