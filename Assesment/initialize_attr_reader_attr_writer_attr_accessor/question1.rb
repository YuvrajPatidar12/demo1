class Person
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end
end

# Example
person = Person.new("Alice", 30)

puts "Name: #{person.name}"
puts "Age: #{person.age}"

# Update the attributes using the setter method

person.name = "Nilesh"
person.age = 21

puts "Updated Name: #{person.name}"
puts "Updated Age: #{person.age}"
