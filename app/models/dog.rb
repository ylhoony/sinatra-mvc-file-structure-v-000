require 'pry'
class Dog

  attr_accessor :name, :breed, :age

  @@all = []

  def initialize(name, breed, age)
    binding.pry
    attributes.each do |key, value|
      self.send("#{key}=", value)
    end
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

end
