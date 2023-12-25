file_path = "Test1.txt"  
line_count = 0

if File.exist?(file_path)
  File.open(file_path, "r") do |file|
    file.each_line do
      line_count += 1
    end
  end
  puts "Number of lines in the file: #{line_count}"
else
  puts "The file does not exist."
end
