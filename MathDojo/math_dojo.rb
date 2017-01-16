#_______________________________________________________________________________
# Math Dojo Assignment
#_______________________________________________________________________________
# Develop a ruby class called MathDojo that has the following functions: add, subtract.
# Have these 2 functions take at least 1 parameter.
# MathDojo.new.add(2).add(2, 5).subtract(3, 2).result should perform 0+2+(2+5)-(3+2) and return 4.
#===============================================================================
class MathDojo

    attr_reader :value

    def initialize(value = 0)
        @value = value
        puts "Instance of #{self} initiated."
    end

    def add *items
        item = items.flatten.reduce(:+)
        puts "To #{value} adding #{item}"
        @value += item
        return self
    end #method-add

    def subtract *items
        item = items.flatten.reduce(:+)
        puts "To #{value} subtracting #{item}"
        @value -= item
        return self
    end #method-subtract

    def result
        puts "The value is #{@value}."
    end #method

end #class

puts MathDojo.new.add(2).add(2, 5).subtract(3, 2).result()
puts; puts;
#===============================================================================
# Modify MathDojo to take an array as a parameter with as many values passed into the array as needed.
# (e.g. MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).
# result should do 0+1+(3+5+7+8)+(2+4.3+1.25)-(2+3)-(1.1+2.3) and return its result.
#===============================================================================

MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).result()
