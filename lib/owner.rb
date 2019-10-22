require 'pry'
class Owner
  # code goes here
  attr_reader :name, :species
  @@all_owners = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all_owners << self
  end

  def say_species
    p "I am a #{@species}."
  end

  def self.all
    @@all_owners
  end

  def self.count
    @@all_owners.count
  end

  def self.reset_all
    @@all_owners.clear
  end

  def cats
    Cat.all.select {|cat| cat.owner == self}
  end

  def dogs
    Dog.all.select{|dog| dog.owner == self}
  end

  def buy_cat(name)
    cat = Cat.new(name, self)
    self.cats
  end

  def buy_dog(name)
    dog = Dog.new(name, self)
    self.dogs
  end

  def walk_dogs
    self.dogs.each {|dog| dog.mood = "happy"}
  end
end
