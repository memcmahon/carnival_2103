require 'rspec'
require './lib/ride'
require './lib/attendee'
require './lib/carnival'
require 'pry'

RSpec.describe Carnival do
  describe 'instantiation' do
    it '::new' do
      jeffco_fair = Carnival.new("Jefferson County Fair")

      expect(jeffco_fair).to be_an_instance_of(Carnival)
    end

    it 'has attributes' do
      jeffco_fair = Carnival.new("Jefferson County Fair")

      expect(jeffco_fair.name).to eq("Jefferson County Fair")
    end

    it 'starts with no rides' do
      jeffco_fair = Carnival.new("Jefferson County Fair")

      expect(jeffco_fair.rides).to eq([])
    end
  end
end
