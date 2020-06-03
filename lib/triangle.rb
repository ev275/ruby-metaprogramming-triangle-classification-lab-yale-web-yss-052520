require "pry"
class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def triangle?
    (@side1 > 0) &&
    (@side2 > 0) &&
    (@side3 > 0) &&
    (@side1 + @side2 > @side3) &&
    (@side1 + @side3 > @side2) &&
    (@side3 + @side2 > @side1)
  end

  class TriangleError < StandardError
  end

  def kind
    if triangle?
      if (@side1 == @side2) && (@side1 == @side3)
        return :equilateral
      elsif (@side1 == @side2) || (@side1 == @side3) || (@side2 == @side3)
        return :isosceles
      else
        return :scalene
      end
    else
      raise TriangleError
    end
  end
end

tri = Triangle.new(1, 1, 3)
tri2 = Triangle.new(3, 3, 3)
# binding.pry
