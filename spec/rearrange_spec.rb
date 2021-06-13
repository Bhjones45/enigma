require_relative 'spec_helper'
require 'date'

RSpec.describe Rearrange do
  describe 'Instantiation' do
    it 'exists' do
      rearrange = Rearrange.new("hello world", "02715", "040895")

      expect(rearrange).to be_a(Rearrange)
    end

    it 'has attributes' do
      rearrange = Rearrange.new("hello world", "02715", "040895")

      expect(rearrange.message).to eq("hello world")
      expect(rearrange.key).to eq("02715")
      expect(rearrange.date).to eq("040895")
    end
  end

  describe 'Methods' do
    it 'can create alphabet array' do
      rearrange = Rearrange.new("hello world", "02715", "040895")

      expected = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "]

      expect(rearrange.alphabet).to eq(expected)
    end
    
  end
end
