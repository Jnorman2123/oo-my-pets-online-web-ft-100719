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
    Cat.all.collect{|cat| cat.owner == self}
  end
end
