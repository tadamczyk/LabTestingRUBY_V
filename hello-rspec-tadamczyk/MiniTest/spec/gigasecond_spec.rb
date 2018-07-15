require_relative '../lib/gigasecond'

RSpec.describe '../lib/gigasecond.rb' do
  describe '#from' do
    it 'returns 01/1/2043 01:46:40 date' do
      date = Time.utc(2011, 4, 25, 0, 0, 0)
      finalDate = Time.utc(2043, 1, 1, 1, 46, 40)
      expect(Gigasecond.from(date)).to eq finalDate
    end

    it 'returns 19/2/2009 01:46:40 date' do
      date = Time.utc(1977, 6, 13, 0, 0, 0)
      finalDate = Time.utc(2009, 2, 19, 1, 46, 40)
      expect(Gigasecond.from(date)).to eq finalDate
    end

    it 'returns 27/3/1991 01:46:40 date' do
      date = Time.utc(1959, 7, 19, 0, 0, 0)
      finalDate = Time.utc(1991, 3, 27, 1, 46, 40)
      expect(Gigasecond.from(date)).to eq finalDate
    end

    it 'returns 02/10/2046 23:46:40 date' do
      date = Time.utc(2015, 1, 24, 22, 0, 0)
      finalDate = Time.utc(2046, 10, 2, 23, 46, 40)
      expect(Gigasecond.from(date)).to eq finalDate
    end

    it 'returns 03/10/2046 01:46:39 date' do
      date = Time.utc(2015, 1, 24, 23, 59, 59)
      finalDate = Time.utc(2046, 10, 3, 1, 46, 39)
      expect(Gigasecond.from(date)).to eq finalDate
    end
  end
end
