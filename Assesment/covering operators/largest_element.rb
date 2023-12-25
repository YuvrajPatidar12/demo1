def find_largest_element(arr)
  if arr.empty?
    return "The array is empty."
  end

  max = arr[0]

  arr.each do |element|
    if element > max
      max = element
    end
  end

  return max
end


array = [12, 45, 7, 23, 67, 34, 89, 55]

largest_element = find_largest_element(array)
puts "The largest element in the array is #{largest_element}."
