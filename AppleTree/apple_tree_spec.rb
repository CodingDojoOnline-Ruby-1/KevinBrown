require_relative 'appletree'
RSpec.describe AppleTree do
  describe 'attributes' do
    before do
      @appleTree = AppleTree.new
      @appleTree.height = 1
      @appleTree.age = 1
    end

    it "is expected to have height, and age attributes" do
      expect(@appleTree).to have_attributes(:height => 1)
      expect(@appleTree).to have_attributes(:age => 1)
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
