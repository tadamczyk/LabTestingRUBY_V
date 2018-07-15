class String
  def delete_last(length)
    length.times { chop! }
    self
  end
end
