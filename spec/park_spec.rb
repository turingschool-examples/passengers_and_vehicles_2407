require './lib/park'
require './lib/vehicle'
require './lib/passenger'

RSpec.describe Park do 
  before(:each) do 
    @park = Park.new("Yellowstone", 20)
    @vehicle_1 = Vehicle.new("2001", "Honda", "Civic")
    @vehicle_2 = Vehicle.new("2005", "Toyota", "Corolla")
    @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    @jude = Passenger.new({"name" => "Jude", "age" => 20})
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
  end
  
end