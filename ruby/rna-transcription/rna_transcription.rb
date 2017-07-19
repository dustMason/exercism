module BookKeeping
  VERSION = 4
end

class Complement
  DNA_TO_RNA = { 'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U' }
  
  def self.of_dna dna
    dna.each_char.map do |nucleotide|
      output = DNA_TO_RNA[nucleotide]
      if output.nil?
        return ''
      else
        output
      end
    end.join
  end
end
