require './lib/passenger'
require './lib/vehicle'


RSpec.describe Vehicle do
  before(:each) do
    @vehicle_1 = Vehicle.new("2001", "Honda", "Civic")
    @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12}) 
    @jude = Passenger.new({"name" => "Jude", "age" => 20})       
  end

  describe "#initialize" do
    it "can initialize" do
      expect(@vehicle_1).to be_an_instance_of(Vehicle)
      expect(@vehicle_1.year).to eq("2001")
      expect(@vehicle_1.make).to eq("Honda")
      expect(@vehicle_1.model).to eq("Civic")
      expect(@vehicle_1.passengers).to eq([])
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

    it "returns a boolean" do
      expect([true, false]).to include(@vehicle_1.speeding?)
    end

  end

  describe "#speed" do
    it "sets the vehicle to be speeding" do
      expect(@vehicle_1.speeding?).to eq(false)

      @vehicle_1.speed

      expect(@vehicle_1.speeding?).to eq(true)
    
    end
  end

  describe "#add_passenger" do
    it "can add passengers objects to the vehicle" do

      expect(@charlie).to be_an_instance_of(Passenger)
      expect(@jude).to be_an_instance_of(Passenger)
      expect(@taylor).to be_an_instance_of(Passenger)

      @vehicle_1.add_passenger(@charlie)
      @vehicle_1.add_passenger(@jude)
      @vehicle_1.add_passenger(@taylor)

      expect(@vehicle_1.passengers).to eq([@charlie, @jude, @taylor])
    end

  end

  describe "#num_adults" do
    it "will return 0 if no passengers are in the vehicle" do
      expect(@vehicle_1.passengers).to eq([])
      expect(@vehicle_1.num_adults).to eq(0)
    end

    it "will return a count of all adult passengers in the vehicle" do
      @vehicle_1.add_passenger(@charlie)
      @vehicle_1.add_passenger(@jude)
      @vehicle_1.add_passenger(@taylor)

      expect(@vehicle_1.num_adults).to eq(2)
    end

  end

end