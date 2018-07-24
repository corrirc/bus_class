class Bus

  attr_reader :destination, :route_number

  def initialize(destination, route_number)
      @destination = destination
      @route_number = route_number
      @passengers = []
    end

  def drive
    return "Brum Brum"
  end

  def number_of_passengers
    @passengers.count
  end

  def pickup_person(person1)
    @passengers.push(person1)
  end

  def drop_off_person(drop_off_name)
      for passengers in @passengers
        if passengers.name = drop_off_name
        passengers.delete (passengers)
        break
        end
      end
  end

  def remove_all_passengers()
    @passengers.clear
  end

end
