require_relative 'spec_helper'
require 'date'
require './lib/enigma'

RSpec.describe Enigma do
  describe 'Instantiation' do
    it 'exists' do
      enigma = Enigma.new

      expect(enigma).to be_a(Enigma)
    end
  end

  describe 'Methods' do
    it 'can encrypt with both key and date' do
      enigma = Enigma.new
      input = enigma.encrypt("hello world", "02715", "040895")
      output = {encryption: "keder ohulw", key: "02715", date: "040895"}
      expect(input).to eq(output)
    end
  end
end
