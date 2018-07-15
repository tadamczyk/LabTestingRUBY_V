class Array
  def mean
    (reduce(:+).to_f / size.to_f).to_f
  end
end
