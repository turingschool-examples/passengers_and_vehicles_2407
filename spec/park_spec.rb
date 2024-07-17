require './lib/vehicle'
require './lib/passenger'
require './lib/park'

RSpec.configure do |config| 
 config.formatter = :documentation 
 end

 RSpec.describe Park do 
  before(:each) do 
    @park1 = Park.new("Yellowstone", 10)
    @park2 = Park.new("Rocky Mountain", 8)
    @park3 = Park.new("Two Rivers", 12)
    @vehicle1 = Vehicle.new("2001", "Honda", "Civic")   
    @vehicle2 = Vehicle.new("2011", "Toyota", "Corolla")   
    @vehicle3 = Vehicle.new("2021", "Huyndai", "Sonata") 
    @charlie = Passenger.new({"name" => "Charlie", "age" => 18})  
    @jude = Passenger.new({"name" => "Jude", "age" => 20})    
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12})  
  end

  it "exists and has attributes" do
    expect(@park1).to be_a(Park)
    expect(@park1.name).to eq("Yellowstone")
    expect(@park1.price).to eq(10)
  end

  it 'can list all the vehicles that entered the park' do
    @park1.enter_park(@vehicle1)
    @park1.enter_park(@vehicle2)
    expect(@park1.vehicles).to eq([@vehicle1, @vehicle2])
    @vehicle3.add_passenger(@charlie)  
    @vehicle3.add_passenger(@charlie)  
     
    @park2.enter_park(@vehicle3)
    expect(@park2.vehicles).to eq([@vehicle3])
    # require 'pry'; binding.pry
  end

  it 'can list all the passengers that entered the park' do
   
    @vehicle1.add_passenger(@charlie)  
    @vehicle2.add_passenger(@jude)
    @park1.enter_park(@vehicle1)
    @park1.enter_park(@vehicle2)
    expect(@park1.vehicle_passengers).to eq(["Charlie", "Jude"])
  end

  it "an calculate revenue generated" do
    @vehicle1.add_passenger(@charlie)  
    @vehicle2.add_passenger(@jude)
    @park1.enter_park(@vehicle1)
    @park1.enter_park(@vehicle2)
    expect(@park1.potential_revenue).to eq(20)
  end
end