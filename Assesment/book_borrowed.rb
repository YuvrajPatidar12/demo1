
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


borrowed_books = [
  {
    "book"=> "c",
    "borrower"=> "abc",
    "date"=> "10-May-2021",
  },
  {
    "book"=> "c++",
    "borrower"=> "abc1",
    "date"=> "16-March-2021",
  },
  {
    "book"=> "JS",
    "borrower"=> "abc2",
    "date"=> "21-April-2020",
  },
  {
    "book"=> "JSss",
    "borrower"=> "cba",
    "date"=> "21-April-2020",
  },
  {
    "book"=> "JjjS",
    "borrower"=> "dba",
    "date"=> "21-April-2020",
  }
]
user_name = "dba"

# Solution
def test(borrowed_books, username)
  result = "No books borrowed"
  borrowed_books.each do |item|
    if item["borrower"] == username
      result = "#{item["borrower"]} borrowed #{item["book"]} on #{item["date"]}"
      break
    end
  end
  return result
end

puts test(borrowed_books, user_name)