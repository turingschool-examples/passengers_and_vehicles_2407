require './lib/vehicle'
require './lib/passenger'
require './lib/park'
require 'rspec'

RSpec.configure do |config|
    config.formatter = :documentation
    end

RSpec.describe '#Park' do
    before(:each) do
    @park_1 = Park.new("Canyonlands", 20)
    @park_2 = Park.new("Arches", 10)
    @park_3 = Park.new("Black Canyon", 10)
    end

    it 'has a name' do
        expect(@park_1.name).to eq("Canyonlands")
        expect(@park_2.name).to eq("Arches")
        expect(@park_3.name).to eq("Black Canyon")
    end

    it 'has an admission price' do
        expect(@park_1.admission).to eq 20
        expect(@park_2.admission).to eq 10
        expect(@park_3.admission).to eq 10
    end

    it 'lists vehicles in each park' do
        @park_1.visiting_vehicle(@vehicle = Vehicle.new("2001", "Honda", "Civic"))

        expect(@park_1.park_vehicles).to eq([@vehicle])
    end
end
