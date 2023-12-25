def count_occurrences(string, character)
  count = 0

  string.each_char do |char|
    count += 1 if char == character
  end
  return count
end

# Example usage
puts "Enter the string"
str = gets.chomp
puts "Enter the character you want to count"
char_to_find = gets.chomp

occurrences = count_occurrences(str, char_to_find)
puts "The character '#{char_to_find}' appears #{occurrences} times in the string."
