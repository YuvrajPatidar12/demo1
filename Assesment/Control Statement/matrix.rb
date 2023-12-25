rows = 3
cols = 3

num = 1

( 1..rows ).each do | row |
  ( 1..cols ).each do | col |
    print "#{num} "
    num+=1
  end
  puts
end