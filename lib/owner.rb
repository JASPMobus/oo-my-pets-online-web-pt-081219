class Owner
 attr_reader :name, :species, :cats, :dogs
 
 @@all = []
 
 def initialize(name)
   @name = name 
   @species = "human"
   @cats = []
   @dogs = []
   
   @@all << self
 end
 
 def say_species
   "I am a human."
 end
 
 def self.all
   @@all 
 end
 
 def self.count
   @@all.length
 end 
 
 def self.reset_all
   @@all = []
 end
 
 def cats
   @cats
 end 
 
 def buy_cat(name)
   Cat.new(name, self)
 end
 
 def dogs
   @dogs
 end
 
 def buy_dog(name)
   Dog.new(name, self)
 end
end