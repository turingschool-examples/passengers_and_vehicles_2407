require "./lib/passenger"

RSpec.describe Passenger do
  before(:each) do
    @charlie = Passenger.new({"name" => "Charlie", "age" => 18})    
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12})  
end

    it 'can initialize' do
      expect(@charlie).to be_a_instance_of(Passenger)
      expect(@taylor).to be_a_instance_of(Passenger)
    end

  describe "#name" do 
    it 'has a name' do   
      expect(@charlie.name).to eq("Charlie")
      expect(@taylor.name).to eq("Taylor")
    end
  end

  describe "#age" do 
    it 'has an age' do 
      expect(@charlie.age).to eq(18)
      expect(@taylor.age).to eq(12)
    end
  end

  describe "#adult" do 
    it 'is an adult' do 
      expect(@charlie.adult?).to eq(true)
      expect(@taylor.adult?).to eq(false)
    end
  end

  describe "#drive" do 
    it 'is can drive' do   
      @charlie.drive
      expect(@charlie.drive).to eq(true)
      expect(@charlie.driver?).to eq(true)
      expect(@taylor.driver?).to eq(false)
    end
  end
end