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

    it "returns the expected value" do
      expect(@passenger_1.adult?).to eq(true)
      expect(@passenger_2.adult?).to eq(false)
    end

  end

  describe "#drive" do
    it "sets drive attribute to false by defaul when passenger is created" do
      expect(@passenger_1.driver).to eq(false)
      expect(@passenger_2.driver).to eq(false)
    end

    it "can set the drive attribute to true" do
      @passenger_1.drive
      expect(@passenger_1.driver).to eq(true)
    end
  end

  describe "#driver?" do
    it "returns a boolean" do
      expect([true, false]).to include(@passenger_1.driver?)
    end

    it "returns the expected value" do
      @passenger_1.drive
      expect(@passenger_1.driver?).to eq(true)
      expect(@passenger_2.driver?).to eq(false)
    end

  end


end