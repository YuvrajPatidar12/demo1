puts "Enter the length of array"
length_arr = gets.chomp.to_i 
def create_array(length)
  @arr = Array.new

  (0...length).each do |item| 
    puts "Enter the item"
    items = gets.chomp
    @arr.push(items)
  end
  puts "#{@arr}"

  @arr.each_with_index{ |value, i| p "value #{value} at index #{i}" }
  
end
create_array(length_arr)


