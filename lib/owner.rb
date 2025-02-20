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
 
 def feed_cats
   @cats.map do |cat|
     cat.mood = "happy"
   end
 end 
 
 def dogs
   @dogs
 end
 
 def buy_dog(name)
   Dog.new(name, self)
 end
 
 def walk_dogs
   @dogs.map do |dog|
     dog.mood = "happy"
   end
 end 
 
 def list_pets
   "I have #{@dogs.length} dog(s), and #{@cats.length} cat(s)."
 end
 
 def sell_pets
   (@cats+@dogs).map do |pet|
     pet.mood = "nervous"
     pet.owner = nil
   end
   
   @cats = []
   @dogs = []
 end
end