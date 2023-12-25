class Circle
  def initialize(radius)
    @radius = radius
  end
  def area
    area = 3.14*@radius**2
  end
end

puts "Enter the radius of circle"
radius = gets.chomp.to_f

circle = Circle.new(radius)

puts "The area is #{circle.area}"

