class SumOfMultiples
  def self.to(number)
    to(number)
  end

  def to(number)
    (0...number).select { |m| @mul.any? { |n| m % n == 0}}.inject(:+) || 0
  end

  def initialize(*elements)
    @mul = elements
  end
end

module BookKeeping
    VERSION = 1
end