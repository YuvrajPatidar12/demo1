class Person
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def introduce
    puts "My name is #{self.name} and I am #{self.age} years old."
  end
end

# Example usage
person = Person.new("John", 30)
person.introduce
