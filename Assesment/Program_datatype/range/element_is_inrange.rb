def element_is_in_range(range,element)
  if range.include?(element)
    puts "#{element} is within #{range}"
  else
    puts "#{element} is not within #{range}"
  end
end

puts "Enter the start value of range"
start = gets.chomp.to_i
puts "Enter the Stop value of range"
stop = gets.chomp.to_i

range = start..stop

puts "Enter the element"
element = gets.chomp.to_i

element_is_in_range(range, element)