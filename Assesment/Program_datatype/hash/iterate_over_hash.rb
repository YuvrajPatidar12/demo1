def iterate_over_hash(input_hash)
  input_hash.each do |key, value|
    puts "Key: #{key}, Value: #{value}"
  end
end

my_hash = { "name" => "John", "age" => 30, "city" => "New York" }
iterate_over_hash(my_hash)
