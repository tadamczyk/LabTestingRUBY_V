require_relative '../lib/quiz1_8'

RSpec.describe '../lib/quiz1_8.rb' do
  describe '#delete_last' do
    it 'removes last n elements from string' do
      str = 'hello'
      expect(str.delete_last(2)).to eq 'hel'
    end

    it 'mutates self in place' do
      str = 'blah'
      expect(str.delete_last(1)).to equal str.replace 'bla'
    end
  end
end
