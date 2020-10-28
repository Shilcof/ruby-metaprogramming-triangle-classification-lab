class Triangle

  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    self.a = a
    self.b = b
    self.c = c
  end

  def kind
    if [a, b, c].sort[2] >= [a, b, c].sort[1] + [a, b, c].sort[0] || [a, b, c].any?{|i| i <=0}
      raise TriangleError
    elsif [a, b, c].uniq.size == 1
      :equilateral
    elsif [a, b, c].uniq.size == 2
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
  end
end
