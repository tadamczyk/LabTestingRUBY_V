require_relative '../lib/quiz1_6'

RSpec.describe '../lib/quiz1_6.rb' do
  describe '#strip_whitespace' do
    it 'removes all whitespace' do
      str = '   three ninjas attack!  '
      expected = 'threeninjasattack!'
      expect(str.strip_whitespace).to eq expected
    end
  end
end
