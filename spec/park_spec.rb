require './lib/vehicle'
require './lib/passenger'
require './lib/park'

RSpec.describe Park do
    before(:each) do
        @park = Park.new("Yellowstone", 50)
        @vehicle1 = Vehicle.new("2001", "Honda", "Civic")
        @vehicle2 = Vehicle.new("2012", "Honda", "Pilot")
        @vehicle3 = Vehicle.new("2023", "Tesla", "Y")
        @charlie = Passenger.new({"name" => "Charlie", "age" => 18}) 
        @jude = Passenger.new({"name" => "Jude", "age" => 20})
        @taylor = Passenger.new({"name" => "Taylor", "age" => 12}) 
        @thor = Passenger.new({"name" => "Thor", "age" => 1500})
        @vehicle1.add_passenger(@charlie)
        @vehicle2.add_passenger(@jude)
        @vehicle3.add_passenger(@taylor)
        @vehicle3.add_passenger(@thor)
    end

    describe 'initialize' do
        it 'can exists' do
            expect(@park).to be_an_instance_of(Park)
        end

        it 'has attributes' do
            expect(@park.name).to eq "Yellowstone"
            expect(@park.admission).to be 50
        end
    end

    describe 'vehicles' do
        it 'has an empty arraw for vehicles' do
            expect(@park.vehicles).to eq []
        end

        it "can list the vehicles that entered the park" do
            @park.add_vehicle(@vehicle1)
            @park.add_vehicle(@vehicle2)
            @park.add_vehicle(@vehicle3)

            expect(@park.vehicles).to eq([@vehicle1, @vehicle2, @vehicle3])
        end
    end

    describe 'passengers in park' do
        it 'can list all passengers in the park' do
            @park.add_vehicle(@vehicle1)
            @park.add_vehicle(@vehicle2)
            @park.add_vehicle(@vehicle3)
   
            expect(@park.all_passengers).to eq([@charlie, @jude, @taylor, @thor])
        end
    end

    describe 'revenue collected' do
        it 'sets revenue collected to 0' do
            expect(@park.revenue_collected).to eq 0
        end

        it 'collects fee for each adult in the park' do
            @park.add_vehicle(@vehicle1)
            @park.add_vehicle(@vehicle2)
            @park.add_vehicle(@vehicle3)

            @park.collect_fee
            # @park.collect_fee(@vehicle2)
            # @park.collect_fee(@vehicle3)

            expect(@park.revenue_collected).to eq 150
        end
    end

    describe 'passenger list' do
        it 'can list all adult passengers in abc order' do
            @park.add_vehicle(@vehicle1)
            @park.add_vehicle(@vehicle2)
            @park.add_vehicle(@vehicle3)

            expect(@park.list_adults).to eq ([@charlie, @jude, @thor])
        end

        it "can list all minor passengers in abc order" do
            @park.add_vehicle(@vehicle1)
            @park.add_vehicle(@vehicle2)
            @park.add_vehicle(@vehicle3)

            expect(@park.list_minors).to eq ([@taylor])
        end
    end
end