require 'simplecov'
SimpleCov.start

require_relative '../lib/merge_sort'

RSpec.describe '../lib/merge_sort.rb' do
  describe '#merge_sort' do
    it 'should not returns raise error' do
      expect{[1, 2, 3].merge_sort}.not_to raise_error
    end

    it 'should returns sorted empty array' do
      expect([].merge_sort).to match([])
    end

    it 'should returns sorted array includes float, int and string elements' do
      before_sort = ['Tomek', '15.34', 'adam', '9']
      after_sort = ['9', '15.34', 'Tomek', 'adam']
      expect(before_sort.merge_sort).to match_array(after_sort)
    end
  end
end
