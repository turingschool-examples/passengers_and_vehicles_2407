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
        end
        it 'has a year, make, model' do
            expect(@vehicle.year).to eq("2001")
            expect(@vehicle.make).to eq("Honda")
            expect(@vehicle.model).to eq("Civic")
        end
    end

    describe '#speeding?' do
        it 'gives true or false for speed' do
            expect(@vehicle.speeding?).to eq(false)
            @vehicle.speed
            expect(@vehicle.speeding?).to eq(true)
        end
    end

    describe '#passengers' do
        it 'has no passengers' do
            expect(@vehicle.passengers).to eq([])
        end
    end

    describe '#add_passenger' do
        it 'adds passenger to passengers array' do
            @vehicle.add_passenger(@charlie)
            expect(@vehicle.passengers).to eq([@charlie])
            @vehicle.add_passenger(@jude)
            @vehicle.add_passenger(@taylor)
            expect(@vehicle.passengers).to eq([@charlie, @jude, @taylor])
        end
    end

    describe '#num_adults' do
        it 'counts the number of adults in the vehicle' do
            @vehicle.add_passenger(@charlie)
            @vehicle.add_passenger(@jude)
            @vehicle.add_passenger(@taylor)
            expect(@vehicle.num_adults).to eq(2)
        end
    end
end