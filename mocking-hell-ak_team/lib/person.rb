class Person
  attr_accessor :id, :firstname, :lastname

  def initialize(id, firstname, lastname)
    @id = id
    @firstname = firstname
    @lastname = lastname
  end

  def to_s
    person = "#{firstname} #{lastname}"
    person
  end
end
