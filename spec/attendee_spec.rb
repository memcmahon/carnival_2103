require 'rspec'
require './lib/attendee'

RSpec.describe Attendee do
  describe 'instantiation' do
    it '::new' do
      attendee = Attendee.new('Bob', 20)

      expect(attendee).to be_an_instance_of(Attendee)
    end

    it 'has attributes' do
      attendee = Attendee.new('Bob', 20)

      expect(attendee.name).to eq('Bob')
      expect(attendee.spending_money).to eq(20)
    end

    it 'starts with no interests' do
      attendee = Attendee.new('Bob', 20)

      expect(attendee.interests).to eq([])
    end
  end

  describe 'methods' do
    it '#add_interest' do
      attendee = Attendee.new('Bob', 20)

      attendee.add_interest('Bumper Cars')
      attendee.add_interest('Ferris Wheel')

      expect(attendee.interests).to eq(["Bumper Cars", "Ferris Wheel"])
    end
  end
end
