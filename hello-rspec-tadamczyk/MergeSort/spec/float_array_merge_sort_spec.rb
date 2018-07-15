require 'simplecov'
SimpleCov.start

require_relative '../lib/merge_sort'

RSpec.describe '../lib/merge_sort.rb' do
  describe '#merge_sort' do
    it 'should returns correct float array' do
      expect([1.001, 1.1, 0.00001].merge_sort).to be_a_kind_of Array
    end

    it 'should returns sorted array with one float element' do
      expect([1.0001].merge_sort).to match_array([1.0001])
    end

    it 'should returns sorted float array' do
      expect([1.001, 1.002, 1.1, 1].merge_sort).to match_array([1, 1.001, 1.002, 1.1])
    end

    it 'should returns sorted negative float array' do
      expect([-1.001, -1.002, -1.1, -1].merge_sort).to match_array([-1.1, -1.002, -1.001, -1])
    end

    it 'should returns correctly sorted float array' do
      expect([133, 1.531, 0.233, -5.032].merge_sort).to match_array([-5.032, 0.233, 1.531, 133])
    end

    it 'should returns sorted float array with duplicate elements' do
      expect([1.1, 1.1, 1, 1.001, 1, 1.002].merge_sort).to match_array([1, 1, 1.001, 1.002, 1.1, 1.1])
    end

    it 'should returns the littlest element in sorted float array' do
      array = [-1.002, -1.01, 5.2321, 5.232].merge_sort
      expect(array[0]).to eq (-1.01)
    end

    it 'should returns the biggest element in sorted float array' do
      array = [-1.002, -1.01, 5.2321, 5.232].merge_sort
      expect(array[-1]).to eq (5.2321)
    end
  end
end
