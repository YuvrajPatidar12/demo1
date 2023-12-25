name = ["John","Jorden"]
city = ["Paris","berlin"]
country = ["France","Germany"]

output = name.each_with_index.collect{|name,index| data = [name]; data<< city[index];data<<country[index]}
p output


arr =[]
arr.push(name,city,country)
p arr.transpose


