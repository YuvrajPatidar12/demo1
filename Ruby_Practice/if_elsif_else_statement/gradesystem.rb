puts "Enter the marks of Hindi"
hindi = gets.to_i
puts "Enter the marks of English"
english = gets.to_i
puts "Enter the marks of Maths"
maths = gets.to_i
puts "Enter the marks of Science"
science = gets.to_i
puts "Enter the marks of Social Science"
social_science = gets.to_i

total = hindi + english + maths + science + social_science
puts "Your Total Marks is #{total}."
percent = (total * 100)/500
puts "Your percent is #{percent}%."

if (91..100) == percent
  puts "Your grade is Very Good."
elsif (71 ..90) == percent
  puts "Your grade is Good."
elsif (51..70) == percent
    puts "Your grade is Average."
elsif (33..50) == percent
      puts "Your grade is Pass."
elsif (0..32) == percent
    puts "Your grade is Fail."
else
  puts "You Enter the wrong number."
end