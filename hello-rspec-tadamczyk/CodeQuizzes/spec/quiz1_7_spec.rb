require_relative '../lib/quiz1_7'

RSpec.describe '../lib/quiz1_7.rb' do
  describe '#titlecase' do
    it 'capitalizes the first letter of every word' do
      str = 'the grand Gala party'
      expected = 'The Grand Gala Party'
      expect(str.titlecase).to eq expected
    end
  end
end
