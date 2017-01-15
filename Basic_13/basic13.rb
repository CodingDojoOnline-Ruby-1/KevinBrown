# Solve all 13 problems below in as much of Ruby way as possible.
#
# *Bonus if they are all one line each*

# Print 1-255 {#1}
# Write a program (sets of instructions) that would print all the numbers from 1 to 255.
alfred = (1..255); alfred.each{|num| puts num}

#Print odd numbers between 1-255 {#2}
#Write a program (sets of instructions) that would print all the odd numbers from 1 to 255.
aman = (0..127); aman.each{|num| puts num * 2 + 1}

# Print Sum {#3}
# Write a program that would print the numbers from 0 to 255 but this time, it would also print the sum of the numbers that have been printed so far. For example, your output should be something like this:
# New number: 0 Sum: 0
# New number: 1 Sum: 1
# New Number: 2 Sum: 3
# New number: 3 Sum: 6
# New Number: 255 Sum: ___.
#Do NOT use an array to do this exercise.
brandon = (0..255); brandon.each{|num1| puts "New Number: #{num1} Sum: #{y = (0..num1); sum =0; y.each{|num2| sum=sum+num2}; sum}"}

# Iterating through an array {#4}
# Given an array X, say [1,3,5,7,9,13], write a program that would iterate through each member of the array and print each value on the screen.  Being able to loop through each member of the array is extremely important.
carissa = [1, 3, 5, 7, 9, 13]; for i in 1..carissa.length; puts "Item " + (i).to_s + " is " + carissa[i-1].to_s; next i; end

# Find Max{#5}
# Write a program (sets of instructions) that takes any array and prints the maximum value in the array. Your program should also work with a given array that has all negative numbers (e.g. [-3, -5, -7]), or even a mix of positive numbers, negative numbers and zero.
charlie = [-3, -5, -7, 0, 5, 13, -6, 4]; puts "The largest Number in the array is " + charlie.max.to_s

# Get Average {#6}
# Write a program that takes an array, and prints the AVERAGE of the values in the array. For example for an array [2, 10, 3], your program should print an average of 5. Again, make sure you come up with a simple base case and write instructions to solve that base case first, then test your instructions for other complicated cases. You can use a count function with this assignment.
francisco = [-3, -5, -7, 0, 5, 13, -6, 41, 3, 5, 7, 9, 14]; sum = 0.0; francisco.each_index{|i| sum += francisco[i]}; puts "The average is #{sum/francisco.count}."

# Array with Odd Numbers {#7}
# Write a program that creates an array 'y' that contains all the odd numbers between 1 to 255. When the program is done, 'y' should have the value of [1, 3, 5, 7, ... 255].
y=[]; for i in 0..256; if i %2 == 1 then y.push(i) end; end; puts "The array 'y' is now: #{y}"

# Greater Than y {#8}
# Write a program that takes an array and returns the number of values in that array whose value is greater than a given value y. For example, if array = [1, 3, 5, 7] and y = 3, after your program is run it will print 2 (since there are two values in the array that are greater than 3).
y = 3; gideon = [-3, -5, -7, 0, 5, 13, -6, 41, 3, 5, 7, 9, 14]; x = gideon.sort.dup; i = gl = gideon.length - 1; while i > -1 do; if x.at(i) > y then slicer = i; end; i = i - 1; end; w = x.slice(slicer..gl); puts "The array has #{w.count} numbers greater than y =#{y}."
# ================================================================================================================
# y = 3
# gideon = [-3, -5, -7, 0, 5, 13, -6, 41, 3, 5, 7, 9, 14]
# x = gideon.sort.dup
# i = gl = gideon.length - 1
# while i > -1 do
    # if x.at(i) > y then
        # slicer = i
    #end #if
    # i = i - 1
# end #while
# puts "Slicer is #{slicer}"
# puts "Slice is #{x.at(slicer)}"
# w = x.slice(slicer..gl)
# puts "X is #{x}"
# puts "W is #{w}"
# puts "The array has #{w.count} numbers greater than y =#{y}."
# ================================================================================================================

# Square the values {#9}
# Given any array x, say [1, 5, 10, -2], create an algorithm (sets of instructions) that multiplies each value in the array by itself.  When the program is done, the array x should have values that have been squared, say [1, 25, 100, 4].
x = [1, 5, 10, -2]; puts "x is: #{x}"; i = x.length - 1; while i > -1 do temp = x.at(i); x[i] = temp * temp; i = i - 1; end; puts "x is now: #{x}"
# ================================================================================================================
# x = [1, 5, 10, -2]
# puts "x is: #{x}"
# i = x.length - 1
# while i > -1 do
#     temp = x.at(i)
#     x[i] = temp * temp
#     i = i - 1
# end #while
# puts "x is now: #{x}"
# ================================================================================================================

# Eliminate Negative Numbers {#10}
# Given any array x, say [1, 5, 10, -2], create an algorithm that replaces any negative number with the value of 0.  When the program is done, x should have no negative values, say [1, 5, 10, 0].
x = [1, 5, 10, -2]; puts "x is: #{x}"; i = x.length - 1; while i > -1 do; if x[i] < 0 then x[i] = 0; end; i = i - 1; end; puts "x is now: #{x}"
# ================================================================================================================
# x = [1, 5, 10, -2]
# puts "x is: #{x}"
# i = x.length - 1
# while i > -1 do
#     if x[i] < 0 then
#         x[i] = 0
#     end #if
#     i = i - 1
# end #while
# puts "x is now: #{x}"
# ================================================================================================================

# Max, Min, and Average {#11}
# Given any array x, say [1, 5, 10, -2], create an algorithm that prints the maximum number in the array, the minimum value in the array, and the average of the values in the array.

# ================================================================================================================
x = [1, 5, 10, -2]
puts "x is: #{x}"
puts x.

i = x.length - 1
while i > -1 do
    if x[i] < 0 then
        x[i] = 0
    end #if
    i = i - 1
end #while
puts "x is now: #{x}"
# ================================================================================================================

# Shifting the values in the array {#12}
# Given any array x, say [1, 5, 10, 7, -2], create an algorithm that shifts each number by one to the front.  For example, when the program is done, an x of [1, 5, 10, 7, -2] should become [5, 10, 7, -2, 0].

# ================================================================================================================
# x = [1, 5, 10, -2]
# puts "x is: #{x}"
# i = x.length - 1
# while i > -1 do
#     if x[i] < 0 then
#         x[i] = 0
#     end #if
#     i = i - 1
# end #while
# puts "x is now: #{x}"
# ================================================================================================================

# Number to string {#13}
# Write a program that takes an array of numbers and replaces any negative number with the string 'Dojo'.  For example, if array x is initially [-1, -3, 2] after your program is done that array should be ['Dojo', 'Dojo', 2].

# ================================================================================================================
# x = [1, 5, 10, -2]
# puts "x is: #{x}"
# i = x.length - 1
# while i > -1 do
#     if x[i] < 0 then
#         x[i] = 0
#     end #if
#     i = i - 1
# end #while
# puts "x is now: #{x}"
# ================================================================================================================
