def plaindrone str
  str1 = str 
  str2 = str.reverse 

  return "String is palindrone" if str1 == str2
  return "String is not palindrone"
end

puts "Enter the string"
str = gets.chomp

puts plaindrone(str)