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
  attr_accessor :height, :age, :apples

  def initialize
    @age = 0
    @height = 0
    @apples = []
  end

  def count_apples
    @apples.count
  end

  def year_gone_by
    @age += 1
    @height += 1
  end
end
