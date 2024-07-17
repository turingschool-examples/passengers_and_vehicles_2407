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
        @vehicle_2.add_passenger(@george)
        @vehicle_2.add_passenger(@taylor)
        @vehicle_2.add_passenger(@cedric)
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

    describe "#vehicle_pass" do
        it 'can add vehicles to the vehicles array' do
            @park_1.vehicle_pass(@vehicle_1)
            
            expect(@park_1.vehicles).to include Vehicle
            expect(@park_1.vehicles.count).to eq 1
        end
    end

    describe "#track_passengers" do
        it 'adds passengers with add_passenger' do
            @park_1.add_passengers(@vehicle_1)
            
            expect(@park_1.passengers).to include Passenger
            expect(@park_1.passengers[0].name).to eq "Charlie"
        end
    
        it 'adds the passengers of the vehicle to passengers array' do
            @park_1.vehicle_pass(@vehicle_1)
            
            expect(@park_1.vehicles.count).to eq 1
            expect(@park_1.passengers.count).to eq 3
        end

        it 'adds the passengers of multiple vehicles to passengers array' do
            @park_2.vehicle_pass(@vehicle_1)
            @park_2.vehicle_pass(@vehicle_2)

            expect(@park_2.vehicles.count).to eq 2
            expect(@park_2.passengers.count).to eq 6
        end
    end

    describe "#track_revenue" do
        it 'can charge admissions correctly' do
            @park_2.charge_admission(@charlie)
            expect(@park_2.collected_admissions).to eq 35

            @park_1.charge_admission(@charlie)
            expect(@park_1.collected_admissions).to eq 40
        end
    
        it 'can charge admissions off age' do
            @park_1.charge_admission(@charlie)
            expect(@park_1.collected_admissions).to eq 40

            @park_1.charge_admission(@taylor)
            expect(@park_1.collected_admissions).to eq 60
        end

        it 'charges each passenger in a vehicle' do
            expect(@park_2.collected_admissions).to eq 0
            @park_2.vehicle_pass(@vehicle_1)
            
            expect(@park_2.vehicles.count).to eq 1
            expect(@park_2.passengers.count).to eq 3
            expect(@park_2.collected_admissions).to eq 85
        end

        it 'tracks all revenue for all vehicles' do
            @park_2.vehicle_pass(@vehicle_1)
            @park_2.vehicle_pass(@vehicle_2)

            expect(@park_2.vehicles.count).to eq 2
            expect(@park_2.passengers.count).to eq 6
            expect(@park_2.collected_admissions).to eq 150
        end
    end
end