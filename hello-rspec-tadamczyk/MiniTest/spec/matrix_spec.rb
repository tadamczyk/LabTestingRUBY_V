require_relative '../lib/matrix'

RSpec.describe '../lib/matrix.rb' do
  describe '#new' do
    it 'returns first row [1, 2]' do
      matrix = Matrix.new("1 2\n10 20")
      expectedRow = [1, 2]
      expect(matrix.rows[0]).to eq expectedRow
    end

    it 'returns first row [9, 7]' do
      matrix = Matrix.new("9 7\n8 6")
      expectedRow = [9, 7]
      expect(matrix.rows[0]).to eq expectedRow
    end

    it 'returns second row [19, 18, 17]' do
      matrix = Matrix.new("9 8 7\n19 18 17")
      expectedRow = [19, 18, 17]
      expect(matrix.rows[1]).to eq expectedRow
    end

    it 'returns second row [16, 25, 36]' do
      matrix = Matrix.new("1 4 9\n16 25 36")
      expectedRow = [16, 25, 36]
      expect(matrix.rows[1]).to eq expectedRow
    end

    it 'returns first column [1, 4, 7, 8]' do
      matrix = Matrix.new("1 2 3\n4 5 6\n7 8 9\n 8 7 6")
      expectedColumn = [1, 4, 7, 8]
      expect(matrix.columns[0]).to eq expectedColumn
    end

    it 'returns second column [1903, 3, 4]' do
      matrix = Matrix.new("89 1903 3\n18 3 1\n9 4 800")
      expectedColumn = [1903, 3, 4]
      expect(matrix.columns[1]).to eq expectedColumn
    end
  end
end
