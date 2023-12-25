def add(a, b)
  return a+b
end

def subtract(a, b)
  return a-b
end

def multiply(a, b)
  return a*b
end

def divide(a, b)
  begin
    return a/b
  rescue ZeroDivisionError
    "The value of b can't be zero"
  end
end

def even_odd
  puts "Enter the number"
  number = gets.chomp.to_i

  if number.even?
    puts "#{number} is even"
  else
    puts "#{number} is odd"
  end
end

# Add
result_Add =  add(12,34)
puts result_Add

# Subtract
result_Sub = subtract(23,5)
puts result_Sub

# Multiply

result_Multiply = multiply(12,12)
puts result_Multiply

# Divide
result_Divide = divide(12,3)
puts result_Divide

# Even/Odd

result = even_odd
puts result
