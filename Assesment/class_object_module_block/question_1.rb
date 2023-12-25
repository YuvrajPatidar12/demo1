module Behaviors
  def walk
    puts "#{name} is walking."
  end

  def talk(message)
    puts "#{name} says: #{message}"
  end
end

class Person
  include Behaviors
  attr_accessor :name, :age
  def initialize(name, age)
    @name = name
    @age = age
  end
  def display_info
    puts "Name: #{@name}, Age: #{@age}"
  end
end

person = Person.new("Yuvraj", 24)
# set the value of name attribute
person.name = "Nilesh"
person.age = 21

person.display_info
person.walk
person.talk("Hello!!!...")