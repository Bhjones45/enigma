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
      expect(rearrange.new_key).to be_a(Key)
    end
  end

  describe 'Methods' do
    it 'can create alphabet array' do
      rearrange = Rearrange.new("hello world", "02715", "040895")

      expected = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "]

      expect(rearrange.alphabet).to eq(expected)
    end

    it 'can find the characters in text' do
      rearrange = Rearrange.new("hello world", "02715", "040895")

      expect(rearrange.character_index(0)).to eq(["h", "o", "r"])
      expect(rearrange.character_index(1)).to eq(["e", " ", "l"])
      expect(rearrange.character_index(2)).to eq(["l", "w", "d"])
      expect(rearrange.character_index(3)).to eq(["l", "o"])
    end

    it 'can encrypt characters' do
      rearrange = Rearrange.new("hello world", "02715", "040895")
      expect(rearrange.encrypt_characters(["h", "o", "r"], 3)).to eq(["k", "r", "u"])
    end


    it 'can find the rearranged characters in text' do
      rearrange = Rearrange.new("hello world", "02715", "040895")

      expect(rearrange.rearrange_encrypted_a).to eq(["k", "r", "u"])
      expect(rearrange.rearrange_encrypted_b).to eq(["e", "", "l"])
      expect(rearrange.rearrange_encrypted_c).to eq(["d", "o", "w"])
      expect(rearrange.rearrange_encrypted_d).to eq(["e", "h",])
    end
  end
end
