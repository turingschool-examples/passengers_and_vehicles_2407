require './lib/vehicle'
require './lib/passenger'

RSpec.configure do |config| 
 config.formatter = :documentation 
 end

 RSpec.describe Vehicle do 
  before(:each) do 
    @vehicle = Vehicle.new("2001", "Honda", "Civic")   
    @charlie = Passenger.new({"name" => "Charlie", "age" => 18})  
    @jude = Passenger.new({"name" => "Jude", "age" => 20})    
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12})  
  end

  it "can exist and have attributes" do
    expect(@vehicle).to be_a(Vehicle)
    expect(@vehicle.year).to eq("2001")
    expect(@vehicle.make).to eq("Honda")
    expect(@vehicle.model).to eq("Civic")
  end

   it 'can tell if vehicle is speeding' do
    expect(@vehicle.speeding?).to eq(false)
   end

   it 'can change speeding if vehicle speeds' do
    @vehicle.speed

    expect(@vehicle.speeding?).to eq(true)
   end

   it "has passengers in an empty array by default" do
    expect(@vehicle.passengers).to eq([])
   end

   it "can add passengers in the array" do
    @vehicle.add_passenger(@charlie)  
    @vehicle.add_passenger(@jude)  
    @vehicle.add_passenger(@taylor)  
    expect(@vehicle.passengers).to eq([@charlie, @jude, @taylor])
   end

   it "can tell how many adults are in vehicle" do
    @vehicle.add_passenger(@charlie)  
    @vehicle.add_passenger(@jude)  
    @vehicle.add_passenger(@taylor)  
    expect(@vehicle.num_adults).to eq(2)
   end
end