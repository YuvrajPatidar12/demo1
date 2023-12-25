puts "Enter the string"

str = gets.chomp
leng = str.length-1
vowels = "aeiou"
count = 0

# str.each_char do |char|
#   if vowels.include?(char)
#     count += 1
#   end
# end

(0..leng).each do |i|
  if vowels.include?(str[i])
    count += 1
  end
end

puts "Number of vowels: #{count}"
puts str.count("aeiou")
