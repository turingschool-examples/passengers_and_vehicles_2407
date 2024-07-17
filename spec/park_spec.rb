require './lib/park'
require './lib/vehicle'
require './lib/passenger'

RSpec.describe Park do 
  before(:each) do 
    @park = Park.new("Yellowstone", 20)
    @vehicle_1 = Vehicle.new("2001", "Honda", "Civic")
    @vehicle_2 = Vehicle.new("2005", "Toyota", "Corolla")
    @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    @jude = Passenger.new({"name" => "Jude", "age" => 20})
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
  end

  it 'exists' do 
    expect(@park).to be_instance_of(Park)
  end

 it 'has attributes' do
  expect(@park.name).to eq("Yellowstone")
  expect(@park.admission_price).to eq(20)
 end


  it 'can list all vehicles that entered the park' do
    expect(@park.vehicles).to eq([])
    @park.add_vehicle(@vehicle_1)
    @park.add_vehicle(@vehicle_2)
    expect(@park.vehicles).to eq([@vehicle_1, @vehicle_2])
  end

  it 'can list all passengers taht entered the park' do 
    @vehicle_1.add_passenger(@charlie)
    @vehicle_1.add_passenger(@taylor)
    @vehicle_2.add_passenger(@jude)

    @park.add_vehicle(@vehicle_1)
    @park.add_vehicle(@vehicle_2)
    expect(@park.passengers).to eq([@charlie, @taylor, @jude])
  end

  it 'can calculate generated revenue' do
    @vehicle_1.add_passenger(@charlie)
    @vehicle_1.add_passenger(@taylor)
    @vehicle_2.add_passenger(@jude)

    @park.add_vehicle(@vehicle_1)
    @park.add_vehicle(@vehicle_2)
    expect(@park.revenue).to eq(40)
  end
end