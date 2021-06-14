require_relative 'spec_helper'

RSpec.describe Message do
  describe 'Instantiation' do
    it 'exists' do
      message = Message.new("hello world")

      expect(message).to be_a(Message)
    end
  end

  describe 'Methods' do
    it 'can find the characters in text' do
      message = Message.new("hello world")

      expect(message.character_index(0)).to eq(["h", "o", "r"])
      expect(message.character_index(1)).to eq(["e", " ", "l"])
      expect(message.character_index(2)).to eq(["l", "w", "d"])
      expect(message.character_index(3)).to eq(["l", "o"])
    end

    it 'can rearrange characters' do
      message = Message.new("hello world")

      expect(message.rearrange_characters_a).to eq(["h", "o", "r"])
      expect(message.rearrange_characters_b).to eq(["e", " ", "l"])
      expect(message.rearrange_characters_c).to eq(["l", "w", "d"])
      expect(message.rearrange_characters_d).to eq(["l", "o"])
    end
  end
end
