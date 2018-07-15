class Array
  def first_duplicate
    find { |c| count(c) > 1 }
  end
end
