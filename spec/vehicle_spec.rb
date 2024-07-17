require './lib/vehicle'
require "./lib/passenger"

RSpec.configure do |config|
  config.formatter = :documentation
end

RSpec.describe Vehicle do
  before(:each) do
    @vehicle = Vehicle.new("2001", "Honda", "Civic")  
  end
  
  describe '#initialize' do
    it 'can initialize' do
      expect(@vehicle).to be_an_instance_of(Vehicle)
      expect(@vehicle.year).to eq(2001)
      expect(@vehicle.make).to eq('Honda')
      expect(@vehicle.model).to eq('Civic')
    end
  end

  describe '#speeding?' do
  it 'can determine if a vehicle is speeding' do
    expect(@vehicle.speeding?).to be false
  end
end

describe '#speed' do
  it 'can drive over the speed limit' do
    expect(@vehicle.speed).to be true
  end
end

describe '#speeding?' do
  it 'can determine if a vehicle is speeding' do
    expect(@vehicle.speeding?).to be true
  end
end

describe '#passengers' do
  it 'can determine if a vehicle can have passengers' do
    expect(@vehicle.passengers).to eq([])
  end
end

describe '#add passengers' do
  it 'can add passengers' do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})  
    jude = Passenger.new({"name" => "Jude", "age" => 20})  
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})   
    expect(@vehicle.add_passengers).to eq(charlie)
    expect(@vehicle.add_passengers).to eq(jude)
    expect(@vehicle.add_passengers).to eq(taylor)
  end
end

describe '#passengers added' do
  it 'can show that a vehicle can has passengers' do
    expect(@vehicle.passengers).to eq([ADD PASSENGERS HERE])
  end
end

describe '#adults in vehicle' do
  it 'can show that a vehicle can has passengers' do
    expect(@vehicle.num_adults).to eq(2)
  end
end
end