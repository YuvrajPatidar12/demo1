# def palindrone(num)
#   if (num.to_s.reverse.to_i == num)
#     return true
#   end
#     return false
# end

puts "Start point"
start = gets.chomp.to_i

puts "End point"
end_point = gets.chomp.to_i

# (start..end_point).each do |num| 
#   puts num if palindrone(num)
# end

i  = start

while i.between?(start,end_point)
  if (i.to_s.reverse.to_i == i)
    puts i
  end
  i += 1
end