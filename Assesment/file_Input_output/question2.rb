names = ["Alice", "Bob", "Charlie", "David", "Eve"]

file_path = "names.txt"

File.open(file_path, "w") do |file|
  names.each do |name|
    file.puts(name)
  end
end

puts "Names have been written to #{file_path}"
