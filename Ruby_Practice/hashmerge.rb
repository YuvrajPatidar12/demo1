
# Test Case 1
# obj = {
#   "id"=> 1,
#   "user_name"=> "abc",
#   "name"=> "cba",
# }
# property = "age"
# value = 32
# Expected Output
# {"id"=>1, "user_name"=>"abc", "name"=>"cba", "age"=>32}

# Test Case 2
obj = {
  "id"=> 1,
  "user_name"=> "abc",
  "name"=> "cba",
}
property = "address"
value = "432 Street, Downtown"
# Expected Output
# {"id"=>1, "user_name"=>"abc", "name"=>"cba", "address"=>"432 Street, Downtown"}

# Test Case 3

# obj = {
#   "id"=> 1,
#   "user_name"=> "ramu",
#   "name"=> "ram",
# }
# property = "name"
# value = "Sam Smith"
# Expected Output
# {"id"=>1, "user_name"=>"ramu", "name"=>"ram"}


def insert_in_hash(obj,property, value)
  return obj.merge!({property=>value}) if !obj.include?(property) 
  obj
end

puts insert_in_hash(obj,property,value)

