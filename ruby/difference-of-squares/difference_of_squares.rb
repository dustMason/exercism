module BookKeeping
  VERSION = 4
end

class Squares
  def initialize n
    @n = n
  end
  
  def difference
    square_of_sum - sum_of_squares
  end
  
  def square_of_sum
    sum ** 2
  end
  
  def sum_of_squares
    sum * (2 * @n + 1) / 3
  end
  
  def sum
    @sum ||= @n * (@n + 1) / 2
  end
end
