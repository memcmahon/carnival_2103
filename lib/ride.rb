class Ride
  attr_reader :name, :cost

  def initialize(ride_params)
    @name = ride_params[:name]
    @cost = ride_params[:cost]
  end
end
