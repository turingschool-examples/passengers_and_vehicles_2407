require "./lib/passenger"


RSpec.describe Passenger do
  before(:each) do
    @passenger_1 = Passenger.new({"name" => "Charlie", "age" => 18})
    @passenger_2 = Passenger.new({"name" => "Taylor", "age" => 12})    
  end

  describe "#initialize" do
    it "can initialize" do
      expect(@passenger_1).to be_an_instance_of(Passenger)
      expect(@passenger_1.name).to eq("Charlie")
      expect(@passenger_1.age).to eq(18)
    end

  end

  describe "#adult?" do
    it "returns a boolean" do
  
      expect([true, false]).to include(@passenger_1.adult?)
    end

  end



end