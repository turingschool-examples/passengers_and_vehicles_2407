require "./lib/passenger"

RSpec.configure do |config|
  config.formatter = :documentation
end

RSpec.describe Passenger do
  before(:each) do
    @charlie = Passenger.new({"name" => "Charlie", "age" => 18})    
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12})   
end

  describe '#initialize' do
    it 'can initialize' do
      expect(@charlie).to be_an_instance_of(Passenger)
      expect(@taylor).to be_an_instance_of(Passenger)
    end
  end

  describe "#name" do 
    it 'has a name' do   
      expect(@charlie.name).to eq("Charlie")
      expect(@taylor.name).to eq("Taylor")
    end
  end

  describe "#age" do 
    xit 'has an age' do 
      expect(@charlie.age).to eq(18)
      expect(@charlie.age).to eq(12)
    end
  end

  describe "#adult" do 
    xit 'is an adult' do 
      expect(@charlie.adult?).to eq true
      expect(@taylor.adult?).to eq false
    end
  end

  describe "#adult" do 
    xit 'is an adult' do   
      expect(@charlie.drive).to eq true
    end
  end

  describe "#adult" do 
    xit 'is an adult' do  
      expect(@charlie.driver?).to eq true
      expect(@taylor.driver?).to eq false
    end
  end
end