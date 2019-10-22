class Cat
  # code goes here
  attr_reader :name
  attr_writer :owner
  def initialize(name, owner)
    @name = name
    @owner = owner
  end
end
