# frozen_string_literal: true

class Meal
    attr_accessor :name, :number
    @@all = []
   

    def initialize(name)
        @name = name
        @number = number
        @@all << self
    end

    def self.all
        @@all 
    end

end


