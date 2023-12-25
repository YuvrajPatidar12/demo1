# Use require to load module1.rb
require_relative 'module1'

class Person
  include Greeting
end

person = Person.new
person.say_hello
