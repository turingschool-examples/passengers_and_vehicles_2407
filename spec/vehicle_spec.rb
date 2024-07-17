require './lib/vehicle'
require './lib/passenger'

RSpec.describe Vehicle do
    before(:each) do
        @vehicle = Vehicle.new("2001", "Honda", "Civic")
    end

    it 'exists' do
        expect(@vehicle).to be_instance_of(Vehicle)
    end

    it 'knows if speeding' do
        expect(@vehicle.speeding?).to be false

        @vehicle.speed

        expect(@vehicle.speeding?).to be true
    end

    it 'can contain passengers' do
        expect(@vehicle.passengers).to eq ([])
    end

    it 'can add passengers' do
        @charlie = Passenger.new({"name" => "Charlie", "age" => 18}) 
        @jude = Passenger.new({"name" => "Jude", "age" => 20})
        @taylor = Passenger.new({"name" => "Taylor", "age" => 12})

        @vehicle.add_passenger(@charlie)
        @vehicle.add_passenger(@jude)
        @vehicle.add_passenger(@taylor)

        expect(@vehicle.passengers.length).to eq(3)
        expect(@vehicle.passengers).to eq([@charlie, @jude, @taylor])
    end

    it 'knows ammount of adults in vehicle' do
        @charlie = Passenger.new({"name" => "Charlie", "age" => 18}) 
        @jude = Passenger.new({"name" => "Jude", "age" => 20})
        @taylor = Passenger.new({"name" => "Taylor", "age" => 12})

        @vehicle.add_passenger(@charlie)
        @vehicle.add_passenger(@jude)
        @vehicle.add_passenger(@taylor)

        expect(@vehicle.num_adults).to eq(2)
    end
end