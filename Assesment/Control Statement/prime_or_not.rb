print "Enter a number: "
number = gets.chomp.to_i

if number <= 1
  prime = false
else
  prime = true
  for i in 2..( number - 1 )
    if number % i == 0
      prime = false
      break
    end
  end
end

if prime
  puts "#{ number } is a prime number."
else
  puts "#{ number } is not a prime number."
end
