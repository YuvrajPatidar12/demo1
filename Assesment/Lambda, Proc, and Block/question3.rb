square_proc = Proc.new do |array|
  array.map { |element| element ** 2 }
end

# Invoke the proc and display the new array
original_array = [1, 2, 3, 4, 5]
result_array = square_proc.call(original_array)

puts "Original Array: #{original_array}"
puts "Squared Array: #{result_array}"
