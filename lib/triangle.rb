class Triangle

  attr_accessor :opposite, :adjacent, :hypotenuse

  def initialize(opposite, adjacent, hypotenuse)
    @opposite = opposite
    @adjacent = adjacent
    @hypotenuse = hypotenuse
  end

  def kind 
    if self.hypotenuse <= 0 || self.adjacent <= 0 || self.opposite <= 0
      raise TriangleError
    elsif self.opposite == self.hypotenuse && self.hypotenuse == self.adjacent 
     :equilateral
    elsif self.opposite == self.adjacent  || self.opposite == self.hypotenuse || self.hypotenuse == self.adjacent 
      :isosceles
    elsif self.hypotenuse != self.adjacent && self.opposite != self.hypotenuse && self.opposite != self.adjacent
      :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "this is not a valid triangle"
    end
  end

end

square = Triangle.new(5, 5, -2)

puts square.kind