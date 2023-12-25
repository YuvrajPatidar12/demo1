# Try to solve this question

# Create a method that returns the majority vote in an array. A majority vote is an element that occurs > N/2 times in an array (where N is the length of the array).
# Examples  majority_vote(["A", "A", "B"]) ➞ "A"

# majority_vote(["A", "A", "A", "B", "C", "A"]) ➞ "A"

# majority_vote(["A", "B", "B", "A", "C", "C"]) ➞ nilNotes
# The frequency of the majority element must be strictly greater than 1/2.
# If there is no majority element, return nil.
# If the array is empty, return nil.``` 


def majority_vote(arr)
  return nil if arr.empty?
  majority_count = arr.length/2
  result = arr.each do |item|
    if arr.count(item) > majority_count
      return item
    else arr.count(item)< majority_count
      return "NilNotes"
    end
  end
  return result
end

p majority_vote(["A", "A", "B"])
p majority_vote(["A", "A", "A", "B", "C", "A"])

p majority_vote(["A", "B", "B", "A", "C", "C"])
p majority_vote([])