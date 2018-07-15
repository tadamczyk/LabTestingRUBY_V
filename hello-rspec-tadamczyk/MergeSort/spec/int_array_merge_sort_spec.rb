require 'simplecov'
SimpleCov.start

require_relative '../lib/merge_sort'

RSpec.describe '../lib/merge_sort.rb' do
  describe '#merge_sort' do
    it 'should returns correct int array' do
      expect([1, 2, 3].merge_sort).to be_a_kind_of Array
    end

    it 'should returns sorted array with one int element' do
      expect([1].merge_sort).to match_array([1])
    end

    it 'should returns sorted int array' do
      expect([1321, 1, 23, 422].merge_sort).to match_array([1, 23, 422, 1321])
    end

    it 'should returns sorted negative int array' do
      expect([-2, -500, -1, -3].merge_sort).to match_array([-500, -3, -2, -1])
    end

    it 'should returns correctly sorted int array' do
      expect([133, 1, 0, -5].merge_sort).to match_array([-5, 0, 1, 133])
    end

    it 'should returns sorted int array with duplicate elements' do
      expect([0, 2, 1, 2, 1, 1].merge_sort).to match_array([0, 1, 1, 1, 2, 2])
    end

    it 'should returns the littlest element in sorted int array' do
      array = [-1, -12, 2, 5].merge_sort
      expect(array[0]).to eq (-12)
    end

    it 'should returns the biggest element in sorted int array' do
      array = [-1, -12, 2, 5].merge_sort
      expect(array[-1]).to eq (5)
    end
  end
end
