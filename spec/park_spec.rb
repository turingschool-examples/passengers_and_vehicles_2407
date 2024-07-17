require "./lib/park"

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
    end

    describe "#track_vehicles" do
    end

    describe "#track_passengers" do
    end

    describe "#track_revenue" do
    end
end