require 'pry'
class Triangle
  attr_reader :l1,:l2, :l3
  def initialize(l1,l2,l3)
    @l1=l1
    @l2=l2
    @l3=l3
  end
  def kind
    if l1>0 && l2>0 && l3>0 && l1+l2>l3 && l2+l3>l1 && l3+l1>l2
      if l1==l2 && l2==l3
        @kind= :equilateral
      elsif l1!=l2 && l2!=l3 && l3!=l1
        @kind=:scalene
      else @kind=:isosceles
      end
    else 
      raise TriangleError
    end
  end

  class TriangleError<StandardError
  end

end

tri=Triangle.new(1,2,3)
binding.pry
