class Park 
attr_reader :name, :admission_price, :vehicles, :passengers

  def initialize(name, admission_price)
    @name = name
    @admission_price = admission_price
    @vehicles = []
    @passengers = []
  end

  def add_vehicles(vehicles)
    @vehicles << vehicles
  end

  def list_all_vehicles
    @vehicles.map do |vehicle|
      "year: #{vehicle.year}, make: #{vehicle.make}, model: #{vehicle.model}"
    end
  end

  def add_passenger(passenger)
    @passengers << passenger
  end

  def list_all_passengers
    
  end
end