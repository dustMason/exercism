module BookKeeping
  VERSION = 1
end

class Prime
  def self.nth n
    raise ArgumentError.new('There is no zeroth prime') if n == 0
    if n > 2
      # Fermat's formula to calculate sieve limit
      limit = (n*(Math.log(n) + Math.log(Math.log(n)))).floor + 3;
    else
      limit = 3
    end
    primes(limit)[n-1]
  end
  
  private
  
  # Good old Sieve of Eratosthenes
  def self.primes up_to
    i = 2
    primes = Array.new(up_to + 1, true)
    primes[0] = primes[1] = false
    while i**2 < up_to + 1 do
      if primes[i]
        j = i**2
        while j < up_to + 1 do
          primes[j] = false
          j += i
        end
      end
      i += 1  
    end
    primes.map.with_index { |n, i| i if n }.compact
  end
end
