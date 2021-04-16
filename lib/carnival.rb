class Carnival
  attr_reader :name, :rides

  def initialize(name)
    @name  = name
    @rides = []
  end

  def add_ride(ride)
    @rides << ride
  end

  def recommend_rides(attendee)
    # interested_rides = []
    # #iterate over @rides
    # @rides.each do |ride|
    #   #determine if ride name is in the attendee.interests array
    #   attendee.interests.each do |interest|
    #     interested_rides << ride if ride.name == interest
    #   end
    # end
    # interested_rides

    # @rides.find_all do |ride|
    #   attendee.interests.any? do |interest|
    #     ride.name == interest
    #   end
    # end

    @rides.find_all do |ride|
      attendee.interests.include?(ride.name)
    end
  end
end
