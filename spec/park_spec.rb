require './lib/passenger'
require './lib/vehicle'
require './lib/park'


RSpec.describe Park do
  before(:each) do
    @park_1 = Park.new("Zion", 10)
    @vehicle_1 = Vehicle.new("2001", "Honda", "Civic")
    @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12}) 
    @jude = Passenger.new({"name" => "Jude", "age" => 20})       
  end

  describe "#initialize" do
    it "can initialize" do
      expect(@vehicle_1).to be_an_instance_of(Vehicle)

    end

  end

end