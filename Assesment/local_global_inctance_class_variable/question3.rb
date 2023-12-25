class Person
  def name # Getter method
    @name
  end

  def name=(new_name)  # Setter method
    @name = new_name
  end
  def display
    puts "Person's name is: #{@name}"
  end
end


person = Person.new
# Set the name using the setter method
person.name = "John"

person.display
