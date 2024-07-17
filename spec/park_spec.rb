require './lib/vehicle'
require './lib/passenger'
require './lib/park'

RSpec.describe Park do
    before(:each) do
        @yosemite = Park.new("Yosemite", 60)
        @glacier = Park.new("Glacier", 50)
    end

    it 'exists' do
        expect(@yosemite).to be_instance_of(Park)
    end

    it 'communitcates its attributes' do
        expect(@yosemite.name).to eq("Yosemite")
        expect(@glacier.price).to eq(50)
    end

    it 'has an list of vehicles entering park' do
        expect(@glacier.entrance_list).to eq([])
    end

    it 'can track vehicles entering' do
        @vehicle_1 = Vehicle.new("2001", "Honda", "Civic")
        @vehicle_2 = Vehicle.new("2001", "A Space", "Odyssey")
        @vehicle_3 = Vehicle.new("1995", "Kawasaki", "KLR-650")

        @glacier.enter(@vehicle_1)
        @glacier.enter(@vehicle_2)
        @glacier.enter(@vehicle_3)

        expect(@glacier.entrance_list).to eq([@vehicle_1, @vehicle_2, @vehicle_3])
    end

    it 'has an list of guests entering park' do
        expect(@yosemite.guest_list).to eq([])
    end

    it 'can track passengers entering' do
        @charlie = Passenger.new({"name" => "Charlie", "age" => 18}) 
        @jude = Passenger.new({"name" => "Jude", "age" => 20})
        @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
        @willie = Passenger.new({"name" => "Willie", "age" => 75})
        @vehicle_1 = Vehicle.new("2001", "Honda", "Civic")
        @vehicle_3 = Vehicle.new("1995", "Kawasaki", "KLR-650")

        @vehicle_1.add_passenger(@charlie)
        @vehicle_1.add_passenger(@jude)
        @vehicle_1.add_passenger(@taylor)
        @vehicle_3.add_passenger(@willie)
        @yosemite.enter(@vehicle_1)
        @yosemite.head_count(@vehicle_1)
        @yosemite.enter(@vehicle_3)
        @yosemite.head_count(@vehicle_3)

        expect(@yosemite.guest_list).to eq([@charlie, @jude, @taylor, @willie])
    end

    it 'tracks revenue' do
        expect(@yosemite.revenue).to eq(0)
    end

    it 'collects admission from adults' do
        @vehicle_3 = Vehicle.new("1995", "Kawasaki", "KLR-650")
        @vehicle_3.add_passenger(@willie)
        @yosemite.enter(@vehicle_3)
        @yosemite.head_count(@vehicle_3)

        @yosemite.collect_fee(@vehicle_3)

        expect(@yosemite.revenue).to eq(60)
    end
end