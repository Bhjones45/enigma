require_relative 'spec_helper'

RSpec.describe Key do
  describe 'Instantiation' do
    it 'exists' do
      @key = Key.new('02715', '040895')

      expect(@key).to be_a(Key)
    end
  end

  describe 'Methods' do
    it 'can return an array from a string' do
      @key = Key.new('02715', '040895')

      expect(@key.input_key).to eq([0, 2, 7, 1, 5])
    end
  end
end
