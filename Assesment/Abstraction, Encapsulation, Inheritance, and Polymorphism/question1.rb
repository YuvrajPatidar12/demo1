class Shape
  # Abstract method that should be implemented in subclasses
  def calculate_area
  end
end

class Rectangle < Shape
  def initialize(width, height)
    @width = width
    @height = height
  end

  def calculate_area
    @width * @height
  end
end

class Circle < Shape
  def initialize(radius)
    @radius = radius
  end

  def calculate_area
    3.14* @radius**2
  end
end

# Example usage
rectangle = Rectangle.new(4, 5)
circle = Circle.new(3)

puts "Rectangle Area: #{rectangle.calculate_area}"
puts "Circle Area: #{circle.calculate_area}"
