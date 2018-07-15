class String
  def titlecase
    split.map(&:capitalize).join(' ')
  end
end
