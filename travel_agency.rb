# arr = [
#   ["JFK", "SFO"],
#   ["BOS", "MIA"],
#   ["SFO", "PEK"],
#   ["MIA", "JFK"],
# ]
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

