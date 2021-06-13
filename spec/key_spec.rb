require_relative 'spec_helper'

RSpec.describe Key do
  describe 'Instantiation' do
    it 'exists' do
      @key = Key.new('02715', '040895')

      expect(@key).to be_a(Key)
    end
  end
end
