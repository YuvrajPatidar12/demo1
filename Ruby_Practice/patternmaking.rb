# 3456 = 2
# 97 = 12
# 2113 = -9


def pattern(num)
  num.to_s.chars.map(&:to_i).inject(-(num.to_s.length ** 2), :+)
end
puts pattern(3456)
puts pattern(97)
puts pattern(2113)