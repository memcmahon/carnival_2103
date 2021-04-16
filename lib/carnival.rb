class Carnival
  attr_reader :name, :rides, :attendees

  def initialize(name)
    @name  = name
    @rides = []
    @attendees = []
  end

  def add_ride(ride)
    @rides << ride
  end

  def admit(attendee)
    @attendees << attendee
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

  def attendees_by_ride_interest
    #return a hash
    grouped_attendees = {}

    #keys - allll my rides
    @rides.each do |ride|
      grouped_attendees[ride] = []
      #values - arrays of attendees interested in key-ride
      @attendees.each do |attendee|
        if attendee.interests.include?(ride.name)
          grouped_attendees[ride] << attendee
        end
      end
    end

    grouped_attendees
  end

  def ticket_lottery_contestants(ride)
    # attendees_by_ride_interest[ride].find_all do |attendee|
    #   attendee.spending_money < ride.cost
    # end

    @attendees.find_all do |attendee|
      attendee.interests.include?(ride.name) && attendee.spending_money < ride.cost
    end
  end
end
