require './lib/vehicle'
require './lib/passenger'

RSpec.describe Vehicle do 
  before(:each) do 
    @vehicle = Vehicle.new("2001", "Honda", "Civic")
    @vehicle_2 = Vehicle.new("2024","Mercedez", "Benz")
  end

  describe 'Vehicle' do 
    it 'was made this year' do 
      expect(@vehicle.year).to eq("2001")
    end

    it 'has a make' do 
      expect(@vehicle.make).to eq("Honda")
    end
     
    it 'has a model name' do 
      expect(@vehicle.model).to eq("Civic")
    end
  end

  describe 'Speeding?' do 
    it 'is not speeding' do 
      expect(@vehicle.speeding?).to eq(false)
    end

    it 'is speeding' do 
      @vehicle.speed
      expect(@vehicle.speeding?).to eq(true)
    end

    describe 'passengers' do 
      it 'returns an empty array for now' do 
        expect(@vehicle.passengers).to eq([])
      end

      it 'is not an empty anymore' do 
        charlie = Passenger.new({"name" => "Charlie", "age" => 18})
        jude = Passenger.new({"name" => "Jude", "age" => 20})    
        taylor = Passenger.new({"name" => "Taylor", "age" => 12})
        @vehicle.add_passenger(charlie)
        @vehicle.add_passenger(jude)
        @vehicle.add_passenger(taylor)
        expect(@vehicle.passengers).to include(charlie, jude, taylor)
      end
    end

    describe 'number of adults' do 
      it 'returns only adult?' do 
        charlie = Passenger.new({"name" => "Charlie", "age" => 18})
        jude = Passenger.new({"name" => "Jude", "age" => 20})    
        taylor = Passenger.new({"name" => "Taylor", "age" => 12})
        @vehicle.add_passenger(charlie)
        @vehicle.add_passenger(jude)
        @vehicle.add_passenger(taylor)
        expect(@vehicle.num_adults).to eq(2)
      end
    end
  end
  
end