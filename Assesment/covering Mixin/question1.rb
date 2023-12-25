module Greeting
  def greet
    "Hello!"
  end
end

class Person
  include Greeting

  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

class Animal
  include Greeting

  attr_accessor :species

  def initialize(species)
    @species = species
  end
end

# Example usage
person = Person.new("Alice")
animal = Animal.new("Cat")

puts "Person Greeting: #{person.greet} My name is #{person.name}."
puts "Animal Greeting: #{animal.greet} I am a #{animal.species}."
