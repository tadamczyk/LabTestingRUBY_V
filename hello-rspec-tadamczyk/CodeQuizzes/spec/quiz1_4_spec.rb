require_relative '../lib/quiz1_4'

RSpec.describe '../lib/quiz1_4.rb' do
  describe '#vowels' do
    it 'returns array of words with vowels' do
      str = '24 hour roadside resistance'
      expected = %w[hour roadside resistance]
      expect(vowels(str)).to eq expected
    end
  end
end
