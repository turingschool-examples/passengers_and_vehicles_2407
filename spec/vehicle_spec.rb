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
        end

        it 'can change speeding attribute' do
        end
    end

    describe "#passengers" do
        before(:each) do
            charlie = Passenger.new({"name" => "Charlie", "age" => 18})  
            jude = Passenger.new({"name" => "Jude", "age" => 20})  
            taylor = Passenger.new({"name" => "Taylor", "age" => 12})
        end
        
        it 'has a list of passengers' do
        end

        it 'can add passengers to the list' do
        end

        it 'can track the number of adults' do
        end
    end
end