require './lib/vehicle'
require './lib/passenger'

RSpec.describe Vehicle do 
  before(:each) do 
    @vehicle = Vehicle.new("2001", "Honda", "Civic")
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
  end
  
end