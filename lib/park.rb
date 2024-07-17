class Park 
  attr_reader :name, :admission_price, :vehicles

  def initialize(name, admission_price)
    @name = name 
    @admission_price = admission_price
    @vehicles = []
  end

  def add_vehicle(vehicle)
    @vehicles << vehicle
  end

  def passengers
    all_passengers = []
    @vehicles.each do |vehicle|
      vehicle.passengers.each do |passenger|
        all_passengers << passenger
      end
    end
    all_passengers
  end
end