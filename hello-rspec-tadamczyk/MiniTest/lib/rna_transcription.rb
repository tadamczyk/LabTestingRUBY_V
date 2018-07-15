class Complement
  def self.of_dna(dna)
    rna = String.new
    dna.each_char do |x|
      rna.concat(self.create_rna(x))
    end
    rna.match(' ') ? '' : rna
  end
  
  def self.create_rna(char)
    case char
      when 'G' then 'C'
      when 'C' then 'G'
      when 'T' then 'A'
      when 'A' then 'U'
      else ' '
    end
  end
end

module BookKeeping
    VERSION = 4
end