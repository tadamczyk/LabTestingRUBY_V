require_relative '../lib/prime_factors'

RSpec.describe '../lib/prime_factors.rb' do
  describe '#for' do
    it 'returns empty array for number equal 1' do
      number = 1
      finalArray = []
      expect(PrimeFactors.for(number)).to eq finalArray
    end

    it 'returns array [2] for number equal 2' do
      number = 2
      finalArray = [2]
      expect(PrimeFactors.for(number)).to eq finalArray
    end

    it 'returns array [3] for number equal 3' do
      number = 3
      finalArray = [3]
      expect(PrimeFactors.for(number)).to eq finalArray
    end

    it 'returns array [2, 2] for number equal 4' do
      number = 4
      finalArray = [2, 2]
      expect(PrimeFactors.for(number)).to eq finalArray
    end

    it 'returns array [2, 3] for number equal 6' do
      number = 6
      finalArray = [2, 3]
      expect(PrimeFactors.for(number)).to eq finalArray
    end

    it 'returns array [2, 2, 2] for number equal 8' do
      number = 8
      finalArray = [2, 2, 2]
      expect(PrimeFactors.for(number)).to eq finalArray
    end

    it 'returns array [3, 3] for number equal 9' do
      number = 9
      finalArray = [3, 3]
      expect(PrimeFactors.for(number)).to eq finalArray
    end

    it 'returns array [3, 3, 3] for number equal 27' do
      number = 27
      finalArray = [3, 3, 3]
      expect(PrimeFactors.for(number)).to eq finalArray
    end

    it 'returns array [5, 5, 5, 5] for number equal 625' do
      number = 625
      finalArray = [5, 5, 5, 5]
      expect(PrimeFactors.for(number)).to eq finalArray
    end

    it 'returns array [5, 17, 23, 461] for number equal 901255' do
      number = 901_255
      finalArray = [5, 17, 23, 461]
      expect(PrimeFactors.for(number)).to eq finalArray
    end

    it 'returns array [11, 9539, 894_119] for number equal 93819012551' do
      number = 93_819_012_551
      finalArray = [11, 9539, 894_119]
      expect(PrimeFactors.for(number)).to eq finalArray
    end
  end
end
