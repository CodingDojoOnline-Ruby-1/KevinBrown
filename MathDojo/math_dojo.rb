#_______________________________________________________________________________
# Math Dojo Assignment
#_______________________________________________________________________________
# Develop a ruby class called MathDojo that has the following functions: add, subtract.
# Have these 2 functions take at least 1 parameter.
# MathDojo.new.add(2).add(2, 5).subtract(3, 2).result should perform 0+2+(2+5)-(3+2) and return 4.
#===============================================================================
class MathDojo

    def add *additives
        sum = 0
        for additive in additives do
            puts "To #{sum} add #{additive} = "
            sum = sum + additive
        end #for
        return self, sum
    end #method

    def subtract *subtractors
        if subtractors.at(1) == nil then
            return
        elsif
            sum =subtractors.at(0)
            i = subtractors.length - 1
            while i > 0 do
                puts "To #{sum} subtract #{subtractors.at(i)} = "
                sum = sum - subtractors.at(i)
                i = i - 1
            end #for
        end #if
        return self, sum
    end #method

    # def result sum
    #     puts "The final value is #{sum}."
    # end #method

end #class

puts MathDojo.new.add(2).add(2, 5).subtract(3, 2)

#===============================================================================
# Modify MathDojo to take an array as a parameter with as many values passed into the array as needed.
# (e.g. MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).
# result should do 0+1+(3+5+7+8)+(2+4.3+1.25)-(2+3)-(1.1+2.3) and return its result.
#===============================================================================
