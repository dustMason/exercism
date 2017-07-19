module BookKeeping
  VERSION = 6
end

class Gigasecond
  def self.from birthmoment
    birthmoment + 1000000000 # 10**9
  end
end
