class Owner
  
  attr_reader :species
  attr_accessor :pets, :cat, :fish, :dog, :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
    @pets = { :fishes => [], :dogs => [], :cats => []  }
  end 
  
  
  def self.all 
    @@all
  end 
  
  def self.count 
    @@all.size
  end

  def species 
    'human'
  end 
  
  def say_species 
    "I am a #{self.species}." 
  end 
  
  def buy_dog(dog_name)
    doggy = Dog.new(dog_name)
    pets[:dogs] << doggy
  end 
  
  def buy_fish(fish_name)
    fishy = Fish.new(fish_name)
    pets[:fishes] << fishy
  end 
  
  def buy_cat(cat_name)
    kitty = Cat.new(cat_name)
    pets[:cats] << kitty
  end 
  
  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end 
  
  def self.reset_all 
    @@all.clear
  end 
  
  def walk_dogs
    pets[:dogs].map {|dog| dog.mood = 'happy'}
  end 
  
  def feed_fish
    pets[:fishes].map {|fish| fish.mood = 'happy'}
  end 
  
  def play_with_cats 
    pets[:cats].map {|cat| cat.mood = 'happy'}
  end 
  
  def sell_pets
    pets.each do |pet_key, pet_val|
      pets[pet_key].map {|pet| pet.mood = 'nervous'}
    end 
    @pets.clear
  end 
end