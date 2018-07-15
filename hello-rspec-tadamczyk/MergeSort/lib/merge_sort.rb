require_relative 'merge'

class Array
  def merge_sort
    return self if length <= 1
    middle = length / 2
    left = self[0...middle].merge_sort
    right = self[middle..-1].merge_sort
    merge(left, right)
  end
end
