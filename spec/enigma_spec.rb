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
    
end
