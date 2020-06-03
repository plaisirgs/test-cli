

class Category
    attr_accessor :name, :picture
    @@all = []
   
    def initialize(name, picture)
       @name = name 
       @picture = picture 
       @@all << self 
    end 
      
    def self.all
        @@all
    end
end