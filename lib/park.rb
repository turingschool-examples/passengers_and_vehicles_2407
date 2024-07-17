class Park 
attr_reader :name, :admission_price, :vehicles

  def initialize(name, admission_price)
    @name = name
    @admission_price = admission_price
    @vehicles = []
  end

  def add_vehicles(vehicles)
    @vehicles << vehicles
  end

  def list_all_vehicles
    @vehicles.map do |vehicle|
      "year: #{vehicle.year}, make: #{vehicle.make}, model: #{vehicle.model}"
    end
  end
end