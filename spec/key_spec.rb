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

    it 'can take the date and square it' do
      @key = Key.new('02715', '040895')

      expect(@key.date_squared).to eq(1672401025)
    end

    it 'can turn date squared into string' do
      @key = Key.new('02715', '040895')

      expect(@key.date_squared_string).to eq('1672401025')
    end

    it 'can take last 4 digits from date squared string' do
      @key = Key.new('02715', '040895')

      expect(@key.new_offset).to eq([1, 0, 2, 5)
    end
  end
end
