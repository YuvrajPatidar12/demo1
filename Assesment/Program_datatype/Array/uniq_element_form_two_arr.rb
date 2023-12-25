array1 = [1,2,3,4,5,6,7]

array2 = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17]

def uniq_element(array1,array2)
  if array1.length > array2.length
    array1.difference(array2)
  else
    array2.difference(array1)
  end
end

puts uniq_element(array1,array2)