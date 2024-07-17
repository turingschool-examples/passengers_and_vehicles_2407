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

    describe 'add_vehicles' do 
      it 'is empty right now' do 
        expect(@park_1.vehicles).to eq([])
        expect(@park_2.vehicles).to eq([])
      end

      it 'is not empty nomore' do 
        @park_1.add_vehicles(@vehicle)
        @park_1.add_vehicles(@vehicle_2)
        @park_2.add_vehicles(@vehicle)
        @park_2.add_vehicles(@vehicle_2)
        expect(@park_1.vehicles).to include(@vehicle, @vehicle_2)
        expect(@park_2.vehicles).to include(@vehicle, @vehicle_2)
      end
    end

    describe 'list all vehicles' do 
      it 'returns all vehicles in parks' do 
        @park_1.add_vehicles(@vehicle)
        @park_1.add_vehicles(@vehicle_2)
        @park_2.add_vehicles(@vehicle)
        @park_2.add_vehicles(@vehicle_2)
        # make a variable to hold the transformed list
        list = ["year: 2001, make: Honda, model: Civic",
        "year: 2024, make: Mercedez, model: Benz"]
        expect(@park_1.list_all_vehicles).to eq(list)
        expect(@park_2.list_all_vehicles).to eq(list)
      end
    end
  end
end