# Write a program to get only unique data

  
arr =[
  {"country_id"=>14, "global_id"=>4491, "value"=>51319}, 
  {"country_id"=>13, "global_id"=>888, "value"=>55142}, 
  {"country_id"=>12, "global_id"=>2038, "value"=>5715},
  {"country_id"=>14, "global_id"=>4491, "value"=>62484}, 
  {"country_id"=> 1, "global_id"=>5824, "value"=>3992}, 
  {"country_id"=>13, "global_id"=>888, "value"=>46911}, 
  {"country_id"=>14, "global_id"=>2278, "value"=>47310}, 
  {"country_id"=>15, "global_id"=>2379, "value"=>4763}, 
  {"country_id"=>14, "global_id"=>3253, "value"=>5253}, 
  {"country_id"=>1, "global_id"=>5824, "value"=>5385}, 
  {"country_id"=>9, "global_id"=>1445, "value"=>50185}
]

# Test Case 
# If country_id and global_id are same in this array then we have to get only the first data

# def fetch_uniq_data(arr)
#   unique_data = {}
#   arr.each{|item| key = "#{item['country_id']} #{item['global_id']}" ; unique_data[key] = item if !unique_data.include?(key)}
#   unique_data.values
# end
# unique_data = fetch_uniq_data(arr)
# unique_data.each do |item|
#   puts item
# end
# 1st way
filtered_arr = arr.uniq { |item| [item["country_id"], item["global_id"]] }

# Display the filtered array
filtered_arr.each { |item| p item }
puts
# 2nd way
uniq = arr.sort_by{|item| "#{item['country_id']} #{item['global_id']}"}.uniq!{|item| "#{item['country_id']} #{item['global_id']}"}
puts uniq