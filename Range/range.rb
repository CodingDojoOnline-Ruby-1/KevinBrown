puts "============================================================================================================"
puts
x = (1..5)
xx = (1...5)
y = ('a'..'z')
yy = ('a'...'z')

puts "Number ranges x and xx"
puts x
puts xx
puts
puts "Letter ranges y and yy"
puts y
puts yy
puts

puts "Class Name: #{x.class}"
puts "Class Name: #{y.class}"
puts

puts "-------- Here is some information about the range x. --------"
puts "It does include 3!" if x.include? 3
puts
puts "The last number of this range is " + x.last.to_s
puts "The maximum number of this range is " + x.max.to_s
puts "The minimum number of this range is " + x.min.to_s
puts
puts "-------- Here is some information about the range xx. --------"
puts "It does include 3!" if xx.include? 3
puts
puts "The last number of this range is " + xx.last.to_s
puts "The maximum number of this range is " + xx.max.to_s
puts "The minimum number of this range is " + xx.min.to_s
puts

puts "Shuffle"
puts y.to_a.shuffle.to_s
puts yy.to_a.shuffle.to_s
puts
puts "===== Is Z in the range y ====="
puts "Member = " + y.member?('z').to_s
puts "Include = " + y.include?('z').to_s
puts
puts "===== Is Z in the range yy ====="
puts "Member = " + yy.member?('z').to_s
puts "Include = " + yy.include?('z').to_s
puts

puts "===== Last/Min/Max of y  ====="
puts y.last
puts y.max
puts y.min
puts
puts "===== Last/Min/Max of yy ====="
puts yy.last
puts yy.max
puts yy.min

puts
puts "============================================================================================================"
