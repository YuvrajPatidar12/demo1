# arr = [[:name,"john"],[:course,"Web development"],[:technology, "ROR"]]
# hash ={}
# arr.each do |item|
#   hash[item[0]] = item[1]
# end
# puts "Hash: #{hash}"

# puts "Enter the string"

# str = gets.chomp

# vowels = "aeiou"

# count = 0

# str.eacg_char do |char|
#   if vowels.include?(char)
#     count += 1
#   end
# end

# puts "Number of vowels: #{count}"


# def reverse_alternate_words(input_string)
#   reversed_words = []
#   word = ""
#   reverse = false

#   input_string.each_char do |char|
#     if char == ' '
#       reversed_words << (reverse ? word.reverse : word)
#       word = ""
#       reverse = !reverse  
#     else
#       word << char
#     end
#   end


#   reversed_words << (reverse ? word.reverse : word)

#   reversed_string = reversed_words.join(' ')
#   return reversed_string
# end

# input_string = "This is a demo string to reverse alternate words in Ruby"
# result = reverse_alternate_words(input_string)
# puts result

# combine_data = name.each_with_index.collect do |name, index|
#   data = [name]
#   data << city[index]
#   data << country[index]
#   data
# end

# p combine_data



# name = ["John","Jorden"]
# city = ["Paris","berlin"]
# country = ["France","Germany"]




# output = name.each_with_index.collect{|name,index| data = [name]; data<< city[index];data<<country[index]}
# p output


# TEST_Case  = 1
# borrowed_books = [
#   {
#     "book"=> "Ruby",
#     "borrower"=> "abc",
#     "date"=> "10-May-2023",
#   },
#   {
#     "book"=> "rails",
#     "borrower"=> "abc1",
#     "date"=> "16-March-2021",
#   },
#   {
#     "book"=> "ROR",
#     "borrower"=> "abc2",
#     "date"=> "21-April-2020",
#   }
# ]
# user_name = "abc"


# Test_case = 2
# borrowed_books = [
#   {
#     "book"=> "Python",
#     "borrower"=> "abc",
#     "date"=> "10-May-2021",
#   },
#   {
#     "book"=> "java",
#     "borrower"=> "abc1",
#     "date"=> "16-March-2021",
#   },
#   {
#     "book"=> "c++",
#     "borrower"=> "abc2",
#     "date"=> "21-April-2020",
#   }
# ]
# user_name = "abc1"



# Test Case 3


# borrowed_books = [
#   {
#     "book"=> "c",
#     "borrower"=> "abc",
#     "date"=> "10-May-2021",
#   },
#   {
#     "book"=> "c++",
#     "borrower"=> "abc1",
#     "date"=> "16-March-2021",
#   },
#   {
#     "book"=> "JS",
#     "borrower"=> "abc2",
#     "date"=> "21-April-2020",
#   },
#   {
#     "book"=> "JSss",
#     "borrower"=> "cba",
#     "date"=> "21-April-2020",
#   },
#   {
#     "book"=> "JjjS",
#     "borrower"=> "dba",
#     "date"=> "21-April-2020",
#   }
# ]
# user_name = "cba"


# def test(borrowed_books, username)
#   result = "No books borrowed"
#   borrowed_books.each do |item|
#     if item["borrower"] == username
#       result = "#{item["borrower"]} borrowed #{item["book"]} on #{item["date"]}"
#       break
#     end
#   end
#   return result
  
# end

# def test(borrowed_books, username)
#   result = "No books borrowed"
#   borrowed_books.find do |item|
#     if item["borrower"] == username
#       result = "#{item["borrower"]} borrowed #{item["book"]} on #{item["date"]}"
#       break
#     end
#   end
#   return result
  
# end

# puts test(borrowed_books, user_name)
s = "Yuvraj patidar"

# b = s.length - 1

# while b >= 0

#   print  s[b]

#   b=b-1

# end


def reverse(s)
  if s.length == 0
    return " "
  end
  return s[s.length - 1]+s[0,s.length-1]
end
puts reverse(s)
