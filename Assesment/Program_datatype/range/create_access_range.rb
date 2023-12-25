def create_and_access(start, stop, exclusive)
  if exclusive
    range = start...stop
  else
    range = start..stop
  end

  puts "Range Value"
  range.each{|value| puts value}

  puts "Enter the value to check"
  value_check = gets.chomp.to_i

  if range.include?(value_check)
    puts "#{value_check } is within the range"
  else
    puts "#{value_check } is within the range"
  end
end

puts "Start value"
start = gets.chomp.to_i
puts "stop value"
stop = gets.chomp.to_i
puts "Exclusive true or false"
exclusive = gets.chomp

create_and_access(start,stop,exclusive)




