module BookKeeping
  VERSION = 2
end

class Integer
  def to_roman
    numerals = [
      [1000, "M"],
      [500, "D"],
      [100, "C"],
      [50, "L"],
      [10, "X"],
      [5, "V"],
      [1, "I"]
    ]
    
    out = ""
    remainder = self + 0
    numerals.each.with_index do |pair, i|
      amount, digit = pair
      digits = []
      until remainder - amount < 0 do
        digits << digit
        remainder -= amount
      end
      
      # if we end up with 4 copies of a digit, we have to replace those
      # with the shorthand.
      
      if digits.size == 4
        
        # short hand: VIIII => IX, or the next lower 1's place followed by the
        # previous higher 1's place.
        
        prev = numerals[i - ((i-1)%2)]
        _next = numerals[i - ((i+2)%2)]
        digits = [_next[1], prev[1]]
        
        # final edge case for short hand: VIV => IX
        # if our shorthand candidate above ends in the same digit we currently
        # have at the end of our string, replace those three with a similar rule.
        
        if digits[1] == out[-1]
          out.chop!
          out << digits[0] + numerals[i-2][1]
          digits = []
        end
      end
      out << digits.join
    end
    out
    
  end
end
