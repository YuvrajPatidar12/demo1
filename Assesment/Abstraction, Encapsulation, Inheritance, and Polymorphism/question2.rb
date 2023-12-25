class Person
  def initialize(name, age)
    @name = name
    @age = age
  end

  # Getter methods to access private attributes
  def name
    @name
  end

  def age
    @age
  end

  # Setter methods to modify private attributes
  def name=(new_name)
    @name = new_name
  end

  def age=(new_age)
    @age = new_age
  end
end

# Example usage
person = Person.new("Rajesh", 30)

# Access and display attributes using getter methods
puts "Name: #{person.name}"
puts "Age: #{person.age}"

# Modify attributes using setter methods
person.name = "Ramesh"
person.age = 25

# Display the updated attributes
puts "Updated Name: #{person.name}"
puts "Updated Age: #{person.age}"
