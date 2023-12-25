# class ArrayConvert
#   arr = []
#   def self.flatten_array(array, arr)
#       array.each do |a|
#        if a.class==Array
#           flatten_array(a,arr)
#        else
#           arr << a
#        end
#       end
#     arr
#   end

# p flatten_array([1, 2, 3, 4, [1, 2, 3, 4], 5],arr)

# end



# # The start airport is the one that’s on the first position of any segment, but isn’t in the second position of any other segment, it only appears in the first position. And the end is the only one that only appears in the second position given any segment. It never appears in the first position.

# # Imagine you have a travel agency and you receive a list of 
# # Origin->Destination airports, in random order. 

# # Now you need to reorder the list, to be in the correct sequence.

# # Example input:
# input = [
#   ["JFK", "SFO"],
#   ["BOS", "MIA"],
#   ["SFO", "PEK"],
#   ["MIA", "JFK"],
# ]

# # Example Output:
# # Correct output for the above example:
# # output = [
# #    ("BOS", "MIA"),
# #    ("MIA", "JFK"),
# #    ("JFK", "SFO"),
# #    ("SFO", "PEK"),
# # ]

arr = [
  ["delhi", "mumbai"], 
  ["goa", "manali"],
  ["indore", "delhi"], 
  ["kashmir", "kanyakumari"], 
  ["mumbai", "goa"], 
  ["manali", "kashmir"]
]



def reorder_list(arr)
  travel = arr.to_h
  p travel
  start_travel = nil
  travel.each_key{ |key| start_travel = key if !travel.values.include?(key)}
 

  correct_list = []
  while travel.key?(start_travel)
    correct_list.push([start_travel, travel[start_travel]])
    start_travel = travel[start_travel]
  end
  correct_list
end

puts "The correct list is \n #{reorder_list(arr)}"
