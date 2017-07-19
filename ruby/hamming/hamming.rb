module BookKeeping
  VERSION = 3
end

class Hamming
  def self.compute left, right
    if left.size != right.size
      raise ArgumentError.new('Strands must be the same length')
    end
    
    i = 0
    distance = 0
    until i == left.size do
      if left[i] != right[i]
        distance += 1
      end
      i += 1
    end
    
    distance
  end
end
