require './lib/vehicle'
require './lib/passenger'

RSpec.describe Vehicle do
  before(:each) do 
    vehicle = Vehicle.new("2001", "Honda", "Civic")
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    jude = Passenger.new({"name" => "Jude", "age" => 20})
  end

  it 'exists' do

  end

  it 'has attributes' do

  end

  it 'can see if driver is speeding' do

  end

  it 'can show vehicle passengers' do

  end
  
  it 'can count number of adults' do 
    
  end
end