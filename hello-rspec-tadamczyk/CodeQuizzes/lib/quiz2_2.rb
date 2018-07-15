class Array
  def sort_by_length
    sort_by { |word| word.length }
  end
end