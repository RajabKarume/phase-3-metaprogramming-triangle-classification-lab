class Triangle
  attr_accessor :length, :width, :height
  def initialize(length, width, height)
    @length = length
    @width = width
    @height = height
  end
  def kind
    if is_a_triangle?
      if @length == @width && @height == @length
        :equilateral
      elsif @length == @width || @width == @height || @length== @height
        :isosceles
      else
        :scalene
      end
    else
      raise TriangleError
    end
  end
  def is_a_triangle?
    length > 0 && width > 0 && height > 0
    length < height + width && height < length + width && width < length + height
  end
  class TriangleError < StandardError
    
  end
end
