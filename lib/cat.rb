class Cat
  # code goes here
  attr_accessor :owner, :mood
  attr_reader :name
  @@all_cats = []

  def initialize(name)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all_cats << self
  end

  def self.all
    @@all_cats
  end
end
