require 'simplecov'
SimpleCov.start

require_relative '../lib/merge'

RSpec.describe '../lib/merge.rb' do
  describe '#merge' do
    it 'should returns empty array' do
      expect(merge([], [])).to match([])
    end

    it 'should returns correctly merged int array' do
      left = [1, 2, 5]
      right = [4, 3]
      final = [1, 2, 3, 4, 5]
      expect(merge(left, right)).to match_array(final)
    end

    it 'should returns correctly merged float array' do
      left = [1, 0, 1.1]
      right = [0.5, 1.12]
      final = [0, 0.5, 1, 1.1, 1.12]
      expect(merge(left, right)).to match_array(final)
    end

    it 'should returns correctly merged string array' do
      left = %w[adam tomek]
      right = %w[czyk Tomasz Adam]
      final = %w[Adam Tomasz adam czyk tomek]
      expect(merge(left, right)).to match_array(final)
    end

    it 'should returns correctly merged array' do
      left = %w[adam Tomek]
      right = ['1', '0.5']
      final = ['0.5', '1', 'Tomek', 'adam']
      expect(merge(left, right)).to match_array(final)
    end
  end
end
