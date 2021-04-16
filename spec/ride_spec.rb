require 'rspec'
require './lib/ride'

RSpec.describe Ride do
  describe 'instantiation' do
    it '::new' do
      ride = Ride.new({name: 'Ferris Wheel', cost: 0})

      expect(ride).to be_an_instance_of(Ride)
    end

    it 'has attributes' do
      ride = Ride.new({name: 'Ferris Wheel', cost: 0})

      expect(ride.name).to eq('Ferris Wheel')
      expect(ride.cost).to eq(0)
    end
  end
end
