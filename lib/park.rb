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

    adults_names = adults.map do |adult|
      adult.name
    end

    adults_names_sorted = adults_names.sort
    
    return adults_names_sorted
  end

  def list_children_attendees
    childrens = @passengers.find_all do |passenger|
      !passenger.adult?
    end

    childrens_names = childrens.map do |children|
      children.name
    end

    childrens_names_sorted = childrens_names.sort

    return childrens_names_sorted
  end

end