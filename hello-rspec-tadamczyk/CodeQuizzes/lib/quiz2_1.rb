class Array
  def has_string?
    any? { |x| x.instance_of? (String) }
  end
end
