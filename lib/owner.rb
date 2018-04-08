class Owner
  attr_accessor :pets, :name
  attr_reader :species

  OWNERS = []

  def self.all
    OWNERS
  end

  def self.count
    OWNERS.size
  end

  def self.reset_all
    OWNERS.clear
  end

  def initialize(species)
    @species = species
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(name)
    bought_fish = Fish.new(name)
    self.pets[:fishes] << bought_fish
  end

  def buy_dog(name)
    bought_dog = Dog.new(name)
    self.pets[:dogs] << bought_dog
  end

  def buy_cat(name)
    bought_cat = Cat.new(name)
    self.pets[:cats] << bought_cat
  end

  def walk_dogs
    self.pets[:dogs].collect do |dog|
      dog.mood = "happy"
    end
  end

  def feed_fish
    self.pets[:fishes].collect do |fish|
      fish.mood = "happy"
    end
  end

  def play_with_cats
    self.pets[:cats].collect do |cat|
      cat.mood = "happy"
    end
  end

  def sell_pets
    sold = self.pets.values.flatten
    sold.collect do |pet|
      pet.mood = "nervous"
    end
    self.pets.clear
  end

  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end

end
