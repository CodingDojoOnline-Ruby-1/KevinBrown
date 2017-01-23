# Assignment: Apple Tree - Code File
#===============================================================================
# Create a class that simulates the life of an Apple Tree. Remember your TDD
#   practices for this assignment.
#===============================================================================
# After writing each method/attribute write the corresponding test.
#
# 1 Apple Tree should have a height and age
# 2 Apple Tree should have a count of how many apples is on it
# 3 Apple Tree should have a method called year_gone_by, which ages the tree
#    by 1 year affecting its height
# 4 Apple Tree should not grow apples for the first three years of its life
# 5 Apple Tree should have a method called pick_apples that takes all of the
#    apples off the tree
# 6 Apple Tree should decay and not grow apples after 10 years
#===============================================================================

class AppleTree

    attr_accessor :height, :age, :apples, :harvested_apples
    #===========================================================================
    # Begin AppleTree Methods ==================================================

    def initialize
        @age = 0
        @height = 0
        @apples = 0
        @harvested_apples = 0
    end #initialize


    def count_apples
        @apples.count
    end #count_apples


    def grow_apples
        @apples = 40 rand(8) + rand(8) + rand(8)
        #yields between 40-64 apples a year.
    end #grow_apples


    def pick_apples
        @harvested_apples = @apples
        @apples = 0
    end #pick_apples


    def year_gone_by
        @apples = 0 # Unharvested apples fall off and rot
        @age += 1

        if @age <= 10 then
            @height += 3
            #grows 3' per year to 30' tall
        end #if

        if @age > 3 and @age <= 10 then
            @apples = grow_apples
        end #if
    end #year_gone_by

    # End AppleTree Methods ====================================================
    #===========================================================================
    
end #AppleTree class
