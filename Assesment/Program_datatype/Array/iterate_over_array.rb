arr = [1,2,3,4,"a","b","c","d","e","f"]

arr.each do |item|
  p "#{item}"
end
puts
arr.each_with_index do |item, index|
  p "#{item} - #{index}"
end
puts
arr.collect do |item|
  p "#{item}" if item.to_i>0
end
puts
arr.map do |item|
  p "#{item}" if item.class == String
end
puts

