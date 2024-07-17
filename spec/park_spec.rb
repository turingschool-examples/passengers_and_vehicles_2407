require './lib/passenger'
require './lib/vehicle'
require './lib/park'


RSpec.describe Park do
  before(:each) do
    @park_1 = Park.new("Zion", 10)
    @vehicle_1 = Vehicle.new("2001", "Honda", "Civic")
    @vehicle_2 = Vehicle.new("2013", "Chevrolet", "Cruze")
    @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12}) 
    @jude = Passenger.new({"name" => "Jude", "age" => 20})       
  end

  describe "#initialize" do
    it "can initialize" do
      expect(@park_1).to be_an_instance_of(Park)
      expect(@park_1.name).to eq("Zion")
      expect(@park_1.price).to eq(10)
      expect(@park_1.vehicles).to eq([])

    end

  end
  describe "#add_vehicle" do
    it "can list all the vehicles that entered the park" do
      @park_1.add_vehicle(@vehicle_1)
      @park_1.add_vehicle(@vehicle_2)

      expect(@park_1.vehicles).to eq([@vehicle_1, @vehicle_2])
    end
  end


end