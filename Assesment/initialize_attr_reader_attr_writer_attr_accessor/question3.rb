class Rectangle
  attr_accessor :length, :width

  def initialize(length, width)
    @length = length
    @width = width
  end

  def calculate_area
    @length * @width
  end
end

# Example usage
rectangle = Rectangle.new(5, 3)

puts "Length: #{rectangle.length}"
puts "Width: #{rectangle.width}"
puts "Area: #{rectangle.calculate_area}"
