require_relative '../lib/sum_of_multiples'

RSpec.describe '../lib/sum_of_multiples.rb' do
  describe '#to' do
    it 'returns 0 for multiples of 3 or 5 to 1' do
      expect(SumOfMultiples.new(3, 5).to(1)).to eq 0
    end

    it 'returns 3 for multiples of 3 or 5 to 4' do
      expect(SumOfMultiples.new(3, 5).to(4)).to eq 3
    end

    it 'returns 23 for multiples of 3 or 5 to 10' do
      expect(SumOfMultiples.new(3, 5).to(10)).to eq 23
    end

    it 'returns 2_318 for multiples of 3 or 5 to 100' do
      expect(SumOfMultiples.new(3, 5).to(100)).to eq 2_318
    end

    it 'returns 233_168 for multiples of 3 or 5 to 1000' do
      expect(SumOfMultiples.new(3, 5).to(1000)).to eq 233_168
    end

    it 'returns 51 for multiples of 7, 13 or 17 to 20' do
      expect(SumOfMultiples.new(7, 13, 17).to(20)).to eq 51
    end

    it 'returns 30 for multiples of 4 or 6 to 15' do
      expect(SumOfMultiples.new(4, 6).to(15)).to eq 30
    end

    it 'returns 4_419 for multiples of 5, 6 or 8 to 150' do
      expect(SumOfMultiples.new(5, 6, 8).to(150)).to eq 4_419
    end

    it 'returns 275 for multiples of 5 or 25 to 51' do
      expect(SumOfMultiples.new(5, 25).to(51)).to eq 275
    end

    it 'returns 2_203_160 for multiples of 43 or 47 to 10000' do
      expect(SumOfMultiples.new(43, 47).to(10_000)).to eq 2_203_160
    end

    it 'returns 4_950 for multiples of 1 to 100' do
      expect(SumOfMultiples.new(1).to(100)).to eq 4_950
    end

    it 'returns 0 for multiples of an empty list to 10000' do
      expect(SumOfMultiples.new.to(10_000)).to eq 0
    end
  end
end
