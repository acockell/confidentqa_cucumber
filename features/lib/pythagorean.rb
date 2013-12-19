class Pythagorean

  attr_accessor :final

  def initialize
    @final = 0
    @a = 0
    @b = 0
  end

  def check_non_real n
    if n.to_i >= 0
      return n
    else 
      @final = -1
    end

  end

  def side_one a
    a = check_non_real a
    @a = a.to_i
  end
  def side_two b
    b = check_non_real b
    @b = b.to_i
  end

  def order
    if @a > @b
      x = @a
      y = @b
    else
      x = @b
      y = @a
    end

    return square_of_sums x, y, true

  end

  def hypotenuse
    if @final >= 0
      @final = square_of_sums @a, @b, false
    end
    return @final
  end

  def side
    if @final >= 0
      @final = order
    end
    return @final
  end

  def square_of_sums x, y, subtract
    minus = 1
    if subtract
      minus = -1
    end
    square = Math.sqrt(x**2 + (minus) * (y**2))
    return square
  end
end
