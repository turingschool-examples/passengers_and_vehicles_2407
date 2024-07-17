require "./lib/vehicle"
require "./lib/passenger"

RSpec.describe Vehicle do
    before(:each) do
        @vehicle = Vehicle.new('2001', 'Honda', 'Civic')
    end

    describe "#initialize" do
        it 'exists' do
            expect(@vehicle).to be_an_instance_of Vehicle
        end

        it 'has access to all elements on initialize' do
            expect(@vehicle.year).to eq "2001"
            expect(@vehicle.make).to eq "Honda"
            expect(@vehicle.model).to eq "Civic"
        end
    end

    describe "#speeding" do
        it 'has speed attribute' do
            expect(@vehicle.speeding?).to eq false
        end

        it 'can change speeding attribute' do
            expect(@vehicle.speeding?).to eq false
            @vehicle.speed
            expect(@vehicle.speeding?).to eq true
        end
    end

    describe "#passengers" do
        before(:each) do
            @charlie = Passenger.new({"name" => "Charlie", "age" => 18})  
            @jude = Passenger.new({"name" => "Jude", "age" => 20})  
            @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
        end
        
        it 'has a list of passengers' do
            expect(@vehicle.passengers).to eq []
        end

        it 'can add a passenger to the list' do
            expect(@vehicle.passengers).to eq []
            @vehicle.add_passenger(@charlie)
            expect(@vehicle.passengers).to include Passenger
            expect(@vehicle.passengers.count).to eq 1
        end

        it 'can add multiple passengers to the list' do
            expect(@vehicle.passengers).to eq []
            @vehicle.add_passenger(@charlie)
            @vehicle.add_passenger(@jude)
            @vehicle.add_passenger(@taylor)
            
            expect(@vehicle.passengers).to include Passenger
            expect(@vehicle.passengers.count).to eq 3
            
            names = []
            @vehicle.passengers.find_all do |passenger|
                names << passenger.name
            end
            expect(names).to eq ['Charlie', 'Jude', 'Taylor']
        end
        it 'can track the number of adults' do
            @vehicle.add_passenger(@charlie)
            @vehicle.add_passenger(@jude)
            @vehicle.add_passenger(@taylor)
            
            expect(@vehicle.num_adults).to eq 2
        end
    end
end