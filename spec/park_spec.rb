require './lib/park'
require './lib/passenger'
require './lib/vehicle'

RSpec.describe Park do 
  before(:each) do 
    @park_1 = Park.new("Holland Park", 50)
    @park_2 = Park.new("Yellowstone", 100)
    @vehicle = Vehicle.new("2001", "Honda", "Civic")
    @vehicle_2 = Vehicle.new("2024","Mercedez", "Benz")
    @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    @jude = Passenger.new({"name" => "Jude", "age" => 20})
  end

  describe 'Parks' do 
    it 'has a name' do 
       expect(@park_1.name).to eq("Holland Park")
       expect(@park_2.name).to eq("Yellowstone")
  end

    it 'charges addmissions' do 
      expect(@park_1.admission_price).to eq(50)
      expect(@park_2.admission_price).to eq(100)
    end
  end
end