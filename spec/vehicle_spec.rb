require './lib/passenger'
require './lib/vehicle'


RSpec.describe Vehicle do
  before(:each) do
    @vehicle_1 = Vehicle.new("2001", "Honda", "Civic")
  end

  describe "#initialize" do
    it "can initialize" do
      expect(@vehicle_1).to be_an_instance_of(Vehicle)
      expect(@vehicle_1.year).to eq("2001")
      expect(@vehicle_1.make).to eq("Honda")
      expect(@vehicle_1.model).to eq("Civic")
    end

  end

  describe "#speeding?" do
    it "checks if a vehicle is speeding, default is set to false" do
      expect(@vehicle_1.speeding?).to eq(false)
    end

    it "will return true if speed method is called" do
      @vehicle_1.speed
      expect(@vehicle_1.speeding?).to eq(true)
    end

  end

  describe "#speed" do
    it "sets the vehicle to be speeding" do
      expect(@vehicle_1.speeding?).to eq(false)

      @vehicle_1.speed

      expect(@vehicle_1.speeding?).to eq(true)
    
    end
  end



end