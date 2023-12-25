# 1. Create a class called "Person" with attributes name and age.
#  Write a method that displays the person's name and age. Use a module to include 
#  additional behaviors like "walk" and "talk".

module Addiitonal_info
  def walk_person
    puts "I'm walking"
  end
  def talk_person
    puts "I'm talking"
  end
end

class Person
include Addiitonal_info
  def initialize(name, age)
    @name = name
    @age = age
  end
  def displays
    puts "My name is #{@name} and I am #{@age} years old."
  end
end

p = Person.new("John", 30)
p.displays
p.walk_person
p.talk_person