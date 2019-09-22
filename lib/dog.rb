class Dog
  attr_reader :name 
  attr_accessor :owner 
  
  @@all = []
  
  def initialize(name, owner)
    @name = name
    @owner = owner
    
    @@all << self
  end
end