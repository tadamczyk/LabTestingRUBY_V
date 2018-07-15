class String
  def acronym?(acronym)
    acronym == split.map { |w| w[0] }.join
  end
end
