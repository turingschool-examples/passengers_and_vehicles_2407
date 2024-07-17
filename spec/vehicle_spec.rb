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


end