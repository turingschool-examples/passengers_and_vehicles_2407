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

    xit 'has an list of vehicles entering park' do
        expect(@glacier)
    end

    xit 'can track vehicles entering' do
        @vehicle_1 = Vehicle.new("2001", "Honda", "Civic")
        @vehicle_2 = Vehicle.new("2001", "Honda", "Civic")
        @vehicle_3 = Vehicle.new("2001", "Honda", "Civic")


        expect(@glacier.entrance_list).to eq([@vehicle_1, @vehicle_2, @vehicle_3])
    end
end