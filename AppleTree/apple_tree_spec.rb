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
      apple_tree1 = AppleTree.new
    end
    #===============================================================================
    # 1 Apple Tree should have a height and age
    #===============================================================================
    it "is expected to have height, and age attributes" do
      expect(apple_tree1).to have_attributes(:height => 0)
      expect(apple_tree1).to have_attributes(:age => 0)
    end

    #===============================================================================
    # 2 Apple Tree should have a count of how many apples is on it
    #===============================================================================
    it "should have a count of how many apples are on it" do
        expect(apple_tree1).to have_attributes(:apples => 0)
    end

    #===============================================================================
    # 3 Apple Tree should have a method called year_gone_by, which ages the tree
    #    by 1 year affecting its height
    #===============================================================================
    it "should should have method year_gone_by which ages tree 1 year" do
        age1 = apple_tree1.age
        apple_tree1.year_gone_by
        age2 = apple_tree1
        expect(age2 == age1 + 1)
        expect()
    end
    it "should should have method year_gone_by which affects height" do

    end

    #===============================================================================
    # 4 Apple Tree should not grow apples for the first three years of its life
    #===============================================================================
    it "should not produce apples the first three years of its life" do

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
      apple_tree1 = AppleTree.new
    end
    it "should count how many apples are on it" do
      apple_tree1.apples.push("Red Apple")
      expect(apple_tree1.count_apples()).to eq(1)
    end
    it "should have a method called year_gone_by, which ages the tree by 1 year and increases height." do
      apple_tree1.year_gone_by
      expect(apple_tree1.age).to eq(1)
      expect(apple_tree1.height).to eq(1)
    end
  end
end
