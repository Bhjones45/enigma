require_relative 'spec_helper'
require 'date'

RSpec.describe Enigma do
  describe 'Instantiation' do
    it 'exists' do
      enigma = Enigma.new

      expect(enigma).to be_a(Enigma)
    end
  end

  describe 'Methods' do
    it 'can generate todays date into DDMMYY' do
      enigma = Enigma.new

      expect(enigma.date_now('140621')).to eq('140621')
    end

    it 'can randomly generate a key' do
      enigma = Enigma.new
      expect(enigma.key_generate.length).to eq(5)
    end

    it 'can encrypt with both key and date' do
      enigma = Enigma.new
      input = enigma.encrypt("hello world", "02715", "040895")
      output = {encryption: "keder ohulw", key: "02715", date: "040895"}
      expect(input).to eq(output)
    end
  end
end
