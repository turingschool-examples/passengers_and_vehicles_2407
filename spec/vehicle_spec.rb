require './lib/vehicle'
require './lib/passenger'

RSpec.describe Vehicle do
  before(:each) do 
    @vehicle = Vehicle.new("2001", "Honda", "Civic")
    @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    @jude = Passenger.new({"name" => "Jude", "age" => 20})
  end

  it 'exists' do
    expect(@vehicle).to be_instance_of(Vehicle)
  end

  it 'has attributes' do
    expect(@vehicle.year).to eq("2001")
    expect(@vehicle.make).to eq("Honda")
    expect(@vehicle.model).to eq("Civic")
  end

  it 'can see if driver is speeding' do
    expect(@vehicle.speeding?).to eq(false)
    @vehicle.speed
    expect(@vehicle.speeding?).to eq(true)

  end

  xit 'can show vehicle passengers' do

  end
  
  xit 'can count number of adults' do 

  end
end