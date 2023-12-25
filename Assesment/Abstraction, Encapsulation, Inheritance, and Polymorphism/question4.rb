class Animal
  def make_sound
    puts "Some generic animal sound"
  end
end

class Cat < Animal
  def make_sound
    puts "Meow!"
  end
end

class Dog < Animal
  def make_sound
    puts "Woof!"
  end
end

# Example usage
generic_animal = Animal.new
kitty = Cat.new
puppy = Dog.new

puts "Generic Animal Sound:"
generic_animal.make_sound

puts "Cat Sound:"
kitty.make_sound

puts "Dog Sound:"
puppy.make_sound
