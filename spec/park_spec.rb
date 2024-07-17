require "./lib/park"
require "./lib/passenger"
require "./lib/vehicle"

RSpec.describe Park do
    before(:each) do
        @park_1 = Park.new({name: "Yellowstone National Park", adult_admission: 40, child_admission: 20})
        @park_2 = Park.new({name: "Rocky Mountain National Park", adult_admission: 35, child_admission: 15})

        @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
        @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
        @cedric = Passenger.new({"name" => "Cedric", "age" => 8})
        @george = Passenger.new({"name" => "George", "age" => 35})

        @vehicle_1 = Vehicle.new('2001', 'Honda', 'Civic')
        @vehicle_1.add_passenger(@charlie)
        @vehicle_1.add_passenger(@taylor)
        @vehicle_1.add_passenger(@george)

        @vehicle_2 = Vehicle.new('2013', 'Dodge', 'Dart')
        @vehicle_1.add_passenger(@george)
        @vehicle_1.add_passenger(@taylor)
        @vehicle_1.add_passenger(@cedric)
    end

    describe "#initialize" do
        it "exists" do
            expect(@park_1).to be_an_instance_of Park
        end

        it "has attributes accessible" do
            expect(@park_1.name).to eq "Yellowstone National Park"
            expect(@park_1.adult_admission).to eq 40
            expect(@park_1.child_admission).to eq 20
            expect(@park_1.collected_admissions).to eq 0
        end

        it "has empty arrays for passengers and vehicles" do
            expect(@park_1.passengers).to eq []
            expect(@park_1.vehicles).to eq []
        end
    end

    describe "#track_vehicles" do
        it 'can add vehicles to the vehicles array' do
            @park_1.vehicle_pass(@vehicle_1)
            expect(@park_1.vehicles).to include Vehicle
            expect(@park_1.vehicles.count).to eq 1
        end
    end

    describe "#track_passengers" do
    end

    describe "#track_revenue" do
    end
end