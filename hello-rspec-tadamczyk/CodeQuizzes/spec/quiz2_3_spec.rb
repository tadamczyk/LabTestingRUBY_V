require_relative '../lib/quiz2_3'

RSpec.describe '../lib/quiz2_3.rb' do
  describe '#mean' do
    it 'calculates average' do
      arr = [1, 2, 3, 4]
      expect(arr.mean).to eq 2.5
    end
  end
end
