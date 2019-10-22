class Owner
  # code goes here
  attr_reader :name, :species
  @@all_owners = []
  def initialize(name)
    @name = name
    @species = "human"
  end

  def say_species
    p "I am a #{@species}."
  end

  def self.all

  end
end
