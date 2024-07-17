require "./lib/park"
require 'rspec'

RSpec.configure do |config|
    config.formatter = :documentation
end

RSpec.describe 'Park' do
    before(:each) do
        @park = Park.new("Arlong Park", "$25")
        @vehicle = Vehicle.new("2001", "Honda", "Civic")
        @zoro = Passenger.new({"name" => "Zoro", "age" => 19})
        @nami = Passenger.new({"name" => "Nami", "age" => 20})  
        @chopper = Passenger.new({"name" => "Chopper", "age" => 15})
        @luffy = Passenger.new({"name" => "Luffy", "age" => 17})
        @vehicle.add_passenger(@zoro)
        @vehicle.add_passenger(@nami)
        @vehicle.add_passenger(@chopper)
        @vehicle.add_passenger(@luffy)
    end

    describe '#initialize()' do
        it 'will be an instance of a park object' do
            expect(@park).to be_an_instance_of Park
        end
        
        it 'will hold a name attribute based on the argument' do
            expect(@park.name).to eq "Arlong Park"
        end

        it 'will hold an admission price attribute based on the argument' do
            expect(@park.admission_price).to eq "$25"
        end

        it 'will hold a vehicles attribute that is initialized as an empty array' do
            expect(@park.vehicles).to eq ([])
        end

        it 'will hold a passengers attribute that is initialized as an empty array' do
            expect(@park.passengers).to eq ([])
        end

        it 'will hold a revenue attribute that is initialized as 0' do
            expect(@park.revenue).to eq 0
        end
    end

    describe '#admit()' do
        it 'will add the vehicle in the argument to the @vehicles array' do
            expect {@park.admit(@vehicle)}.to change {@park.vehicles.length}.from(0).to(1)
        end
        it 'will use #admit_passengers as helper method conjunctivley' do
            expect {@park.admit(@vehicle)}.to change {@park.passengers.length}.from(0).to(4)
        end
    end

    describe '#admit_passengers()' do
        it 'will add the passengers of the vehicle in the argument to the @passengers array' do
            expect {@park.admit_passengers(@vehicle)}.to change{@park.passengers.length}.from(0).to(4)
        end
    end

    describe '#generate_revenue' do
        it 'will generate an integer repersenting revenue' do
            expect(@park.generate_revenue).to be_an_instance_of Integer
        end

        it 'creates the revenue figure by charging the admission price to every adult included in the passenger list' do
            @park.admit(@vehicle)
            expect{@park.generate_revenue}.to change{@park.revenue}.from(0).to(50)
        end
    end
end