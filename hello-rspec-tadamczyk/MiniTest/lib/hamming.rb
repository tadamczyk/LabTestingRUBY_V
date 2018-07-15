class Hamming
  def self.compute first, second
    raise ArgumentError if first.length != second.length
    first.chars.zip(second.chars).count{ |first, second| first != second }
  end
end

module BookKeeping
  VERSION = 3
end
