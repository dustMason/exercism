module BookKeeping
  VERSION = 1
end

require 'set'

class Sieve
  def initialize up_to
    @up_to = up_to
  end
  
  def primes
    i = 2
    primes = Array.new(@up_to + 1, true)
    primes[0] = primes[1] = false
    while i**2 < @up_to + 1 do
      if primes[i]
        j = i**2
        while j < @up_to + 1 do
          primes[j] = false
          j += i
        end
      end
      i += 1  
    end
    primes.map.with_index { |n, i| i if n }.compact
  end
end
