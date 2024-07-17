require './lib/vehicle'
require './lib/passenger'
require './lib/park'

RSpec.describe Park do
    before(:each) do
        @park_1 = Park.new("Yosemite", 60)
        @park_2 = Park.new("Glacier", 50)
    end

    it 'exists' do
        expect(@park_1).to be_instance_of(Park)
    end

    it 'communitcates its attributes' do
        expect(@park_1.name).to eq("Yosemite")
        expect(@park_2.price).to eq(50)
    end

    it 'can track vehicles entering' do
        @vehicle_1 = Vehicle.new("2001", "Honda", "Civic")
        @vehicle_2 = Vehicle.new("2001", "Honda", "Civic")
        @vehicle_3 = Vehicle.new("2001", "Honda", "Civic")


        expect(@park_2.entrance_list).to eq([@vehicle_1, @vehicle_2, @vehicle_3])
    end
end