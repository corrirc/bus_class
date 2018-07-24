class Bus

  attr_reader :destination, :route_number

  def initialize(destination, route_number)
      @destination = destination
      @route_number = route_number
    end

  def drive
    return "Brum Brum"
  end

end
