require_relative '../lib/quiz1_12'

RSpec.describe '../lib/quiz1_12.rb' do
  describe '#alliteration?' do
    it 'returns true if words start with same letter' do
      words = 'crazy cows consume crack'
      expect(words.alliteration?).to be true
    end

    it 'returns false if words start with different letters' do
      words = 'sky high stacks'
      expect(words.alliteration?).to be false
    end
  end
end
