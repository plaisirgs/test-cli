# frozen_string_literal: true

class Recipe

    @@all = [ ]
    attr_accessor  :name, :id, :ingredients, :link

    def initialize
        @name = name
        @id = id
    end

    def self.all
        @@all 
    end

end


