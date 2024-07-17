class Park

  attr_reader :name, :price, :vehicles, :passengers, :revenue

  def initialize(name, price)
    @name = name
    @price = price
    @vehicles = []
    @passengers = []
    @revenue = 0


  end

  def add_vehicle(vehicle)
    vehicle.passengers.each do |passenger|
      if passenger.adult?
        @revenue += @price
      end
    end

    @passengers.concat(vehicle.passengers)
    @vehicles << vehicle
  end

  def list_adult_attendees
    adults = @passengers.find_all do |passenger|
      passenger.adult?
    end
    return adults
  end

  def list_children_attendees
    children = @passengers.find_all do |passenger|
      !passenger.adult?
    end
    children
  end

end