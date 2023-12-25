def find_range_size(start, stop)
  if start <= stop
    range_size = stop - start + 1
  else
    range_size = start - stop + 1
  end

  return range_size
end

# Example usage
puts "Enter the start value of range"
start = gets.chomp.to_i
puts "Enter the Stop value of range"
stop = gets.chomp.to_i

range_size = find_range_size(start, stop)
puts "The size of the range (#{start} to #{stop}) is #{range_size}."
