require_relative 'spec_helper'
require 'date'
require './lib/rearrange'

RSpec.describe Rearrange do
  describe 'Instantiation' do
    it 'exists' do
      rearrange = Rearrange.new("hello world", "02715", "040895")

      expect(rearrange).to eq(Rearrange)
    end
  end
end
