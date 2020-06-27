

class Category 
    attr_accessor :name, :recipes
    @@all = []
   
    def initialize(name)
       @name = name 
       @recipes = []
       @@all << self  
    end 
      
    def self.all
        @@all
    end
end
