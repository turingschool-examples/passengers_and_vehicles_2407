require './lib/vehicle'
require './lib/passenger'

RSpec.describe Vehicle do
    before(:each) do
        @vehicle = Vehicle.new("2001", "Honda", "Civic")  
        @charlie = Passenger.new({"name" => "Charlie", "age" => 18}) 
        @jude = Passenger.new({"name" => "Jude", "age" => 20})
        @taylor = Passenger.new({"name" => "Taylor", "age" => 12}) 
    end

    describe 'initialize' do
        it 'can exists' do
            expect(@vehicle).to be_an_instance_of(Vehicle)
        end

        it 'has attributes' do
            expect(@vehicle.year).to eq "2001"
            expect(@vehicle.make).to eq "Honda"
            expect(@vehicle.model).to eq "Civic"
        end
    end

    describe 'speeding' do
        it 'sets speeding to default as false' do
            expect(@vehicle.speeding?).to eq false
        end

        it 'changes speeding to true when speed method is used' do
            @vehicle.speed

            expect(@vehicle.speeding?).to eq true
        end
    end

    describe 'passengers' do
        it 'has an empty array of passengers' do
            expect(@vehicle.passengers).to eq []
        end

        it 'can add to passengers' do
            @vehicle.add_passenger(@charlie)

            expect(@vehicle.passengers).to eq([@charlie])
        end

        it 'can count the number of adults as passengers' do
            @vehicle.add_passenger(@charlie)  
            @vehicle.add_passenger(@jude)  
            @vehicle.add_passenger(@taylor)   

            expect(@vehicle.num_adults).to eq 2
        end
    end
end