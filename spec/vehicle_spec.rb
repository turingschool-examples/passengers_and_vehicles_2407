require './lib/vehicle'
require './lib/passenger'

RSpec.describe Vehicle do
    before(:each) do
      @vehicle = Vehicle.new("2001", "Honda", "Civic")
      @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      @jude = Passenger.new({"name" => "Jude", "age" => 20})
      @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    end
  
  describe '#initialize' do
    it 'can initialize' do
      expect(@vehicle).to be_a_instance_of(Vehicle)
      expect(@vehicle.year).to eq("2001")
      expect(@vehicle.make).to eq('Honda')
      expect(@vehicle.model).to eq('Civic')
    end
  end

  describe '#speeding?' do
    it 'can determine if a vehicle is speeding' do
      expect(@vehicle.speeding?).to eq(false)
    end
  end

  describe '#speed' do
    it 'can drive over the speed limit' do
      @vehicle.speed
      expect(@vehicle.speeding?).to eq(true)
   end
  end

  describe '#passengers' do
    it 'can determine if a vehicle can have passengers' do
      expect(@vehicle.passengers).to eq([])
      end
end

  describe '#add passengers' do
    it 'can add passengers' do
      @vehicle.add_passenger(@charlie)
      @vehicle.add_passenger(@jude)
      @vehicle.add_passenger(@taylor)
      expect(@passengers).to eq([@charlie, @jude, @taylor])
    end
  end

  describe '#adults in vehicle' do
    it 'can show that a vehicle has adult passengers' do
      expect(@vehicle.num_adults).to eq(2)
    end
  end
end