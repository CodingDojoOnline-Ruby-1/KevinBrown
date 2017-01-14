BaseArray=["First", "Second", "Third", "Fourth", "Fifth"]
a = BaseArray.dup
b = BaseArray.dup
c = BaseArray.dup
d = BaseArray.dup
e = BaseArray.dup
f = BaseArray.dup
g = BaseArray.dup
h = BaseArray.dup
i = BaseArray.dup
j = BaseArray.dup

puts "----Array----"
puts a
puts "----.at----"
puts a.at(2)
puts "----.delete----"
b.delete("Third")
puts b
puts "----.reverse----"
puts c.reverse
puts "----.length----"
puts d.length
puts "----.sort----"
puts e.sort
puts "----.slice----"
puts f.slice 1, 6
puts "----.shuffle----"
puts g.shuffle
puts "----.join----"
puts h.join
puts "----.insert----"
puts i.insert(2, 'Sixth')
puts "----values_at----"
puts j.values_at(3)

# .at or .fetch
# .delete
# .reverse
# .length
# .sort
# .slice
# .shuffle
# .join
# .insert
# values_at()
