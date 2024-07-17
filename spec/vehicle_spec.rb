require './lib/vehicle'
require './lib/passenger'
require 'rspec'

RSpec.configure do |config|
    config.formatter = :documentation
    end

RSpec.describe '#Vehicle' do
    before(:each) do
    @vehicle = Vehicle.new("2001", "Honda", "Civic") 

    end
    it 'exists' do
        expect(@vehicle).to be_an_instance_of(Vehicle)
    end

    it 'can initialize' do
        expect(@vehicle.year).to eq("2001")
        expect(@vehicle.make).to eq("Honda")
        expect(@vehicle.model).to eq("Civic")
    end

    it 'is not speeding by default' do
        expect(@vehicle.speeding?).to eq false
    end

    it 'certainly can speed' do
        expect(@vehicle.speeding?).to eq false

        @vehicle.speed

        expect(@vehicle.speeding?).to eq true
    end

    it 'can add passengers' do
        @vehicle.add_passenger(@charlie)
        @vehicle.add_passenger(@jude)
        @vehicle.add_passenger(@taylor)

        expect(@vehicle.passengers).to eq([@charlie, @jude, @taylor])
    end

    it 'can count the number of adults in the vehicle' do

    end
end
