require_relative 'spec_helper'
require 'date'
require './lib/enigma'

RSpec.describe Enigma do
  describe 'instantiation' do
    it 'exists' do
      enigma = Enigma.new
    end
  end
end
