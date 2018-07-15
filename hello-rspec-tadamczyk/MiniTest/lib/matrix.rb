class Matrix
  attr_accessor :rows, :columns
  def initialize(matrix)
    @rows = matrix.split("\n").map{ |r| r.split(" ").map{ |i| i.to_i(10) }}
    @columns = @rows.transpose
  end
end