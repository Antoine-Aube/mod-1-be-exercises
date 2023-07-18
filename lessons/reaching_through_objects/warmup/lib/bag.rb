

class Bag 
  attr_reader :candies, :count

  def initialize
    @candies = []
  end

  def empty?
    @candies.empty?
  end
  
  def count
    @candies.count
  end

  def add_candy(candy)
    @candies << candy
  end

  def contains?(candy_type)
    @candies.any? {|candy| candy.type == candy_type }
  end
end