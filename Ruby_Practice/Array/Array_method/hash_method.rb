#

a = [1,2,3,4,5,6]
b = ["a", "b", "c", "d", "e", "f", "g", "h", "i"]
c = ["python", "ruby", "JavaScript", "java"]

puts a.hash()
puts b.hash()
puts c.hash()

a1 = [1,2,3,4,5,6]
A = a.hash()
A1 = a1.hash()
puts A.eql?(A1)