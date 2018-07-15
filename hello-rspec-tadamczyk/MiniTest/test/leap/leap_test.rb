require 'minitest/autorun'
require_relative '../../lib/leap'

class Date
  def leap?
    raise RuntimeError, "Implement this yourself instead of using Ruby's implementation."
  end

  alias gregorian_leap? leap?
  alias julian_leap? leap?
end

class YearTest < Minitest::Test
  def test_year_not_divisible_by_4_common_year
    refute Year.leap?(2015), "Expected 'false', 2015 is not a leap year."
  end

  def test_year_divisible_by_4_not_divisible_by_100_leap_year
    assert Year.leap?(2016), "Expected 'true', 2016 is a leap year."
  end

  def test_year_divisible_by_100_not_divisible_by_400_common_year
    refute Year.leap?(2100), "Expected 'false', 2100 is not a leap year."
  end

  def test_year_divisible_by_400_leap_year
    assert Year.leap?(2000), "Expected 'true', 2000 is a leap year."
  end

  def test_bookkeeping
    assert_equal 3, BookKeeping::VERSION
  end
end
