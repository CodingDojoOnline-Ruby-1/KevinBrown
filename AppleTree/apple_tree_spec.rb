# Assignment: Apple Tree - Test File
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

require_relative 'appletree'

RSpec.describe AppleTree do
  describe 'attributes' do
    before do
      @appleTree = AppleTree.new
      @appleTree.height = 1
      @appleTree.age = 1
    end
    #===============================================================================
    # 1 Apple Tree should have a height and age
    #===============================================================================
    it "is expected to have height, and age attributes" do
      expect(@appleTree).to have_attributes(:height => 1)
      expect(@appleTree).to have_attributes(:age => 1)
    end

    #===============================================================================
    # 2 Apple Tree should have a count of how many apples is on it
    #===============================================================================
    it "should" do

    end

    #===============================================================================
    # 3 Apple Tree should have a method called year_gone_by, which ages the tree
    #    by 1 year affecting its height
    #===============================================================================
    it "should" do

    end

    #===============================================================================
    # 4 Apple Tree should not grow apples for the first three years of its life
    #===============================================================================
    it "should" do

    end

    #===============================================================================
    # 5 Apple Tree should have a method called pick_apples that takes all of the
    #    apples off the tree
    #===============================================================================
    it "should" do

    end

    #===============================================================================
    # 6 Apple Tree should decay and not grow apples after 10 years
    #===============================================================================
    it "should" do

    end

  end
  describe 'behavior' do
    before do
      @appleTree = AppleTree.new
    end
    it "should count how many apples are on it" do
      @appleTree.apples.push("Red Apple")
      expect(@appleTree.count_apples()).to eq(1)
    end
    it "should have a method called year_gone_by, which ages the tree by 1 year and increases height." do
      @appleTree.year_gone_by
      expect(@appleTree.age).to eq(1)
      expect(@appleTree.height).to eq(1)
    end
  end
end
