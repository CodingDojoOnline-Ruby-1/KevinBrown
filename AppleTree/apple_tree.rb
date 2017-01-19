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
