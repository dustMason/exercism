module BookKeeping
  VERSION = 4
end

require 'set'

class Pangram
  def self.pangram? sentence
    letters = ("a".."z").to_set
    letters.subtract sentence.downcase.chars
    letters.empty?
  end
end
