puts "enter the length of hash"
leng_hash = gets.chomp.to_i

def create_hash(leng_hash)
  hash = Hash.new
  (0..leng_hash-1).each_with_index do |index, item|
    puts "Enter the key"
    index = gets.chomp.to_sym
    puts "Enter the value"
    item = gets.chomp
    hash[index]=item
    puts hash
  end


  hash.each_with_index do |index, item|
    "#{index} => #{item}"
  end
  
end

puts create_hash(leng_hash)