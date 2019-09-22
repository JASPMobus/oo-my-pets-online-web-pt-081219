class Owner
 attr_reader :name, :species, :cats, :dogs
 
 @@all = []
 
 def initialize(name)
   @name = name 
   @species = "human"
   
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
 
 def buy_cat(cat)
   cat.owner=self
   @cats.push(cat)
 end
 
 def dogs
   @dogs
 end
 
  def buy_dog(dog)
   dog.owner=self
   @dogs.push(dog)
 end
end