# There are many different styles of music and many albums exhibit multiple styles. Create a function that takes a list of musical styles from albums and returns how many styles are unique.



style1 = ([
  "Dub,Dancehall",
  "Industrial,Heavy Metal",
  "Techno,Dubstep",
  "Synth-pop,Euro-Disco",
  "Industrial,Techno,Minimal"
]) 

style2 =([  
  "Soul",
  "House,Folk",
  "Trance,Downtempo,Big Beat,House",
  "Deep House",
  "Soul"
])

def unique_styles(styles)
  arr = styles.collect{|item| item.split(',')}.flatten
  arr.uniq.length
end

p "The unique style in style1 #{unique_styles(style1)}"
p "The unique style in style1 #{unique_styles(style2)}"
