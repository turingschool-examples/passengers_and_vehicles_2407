require './lib/vehicle'
require './lib/passenger'
require 'rspec'

RSpec.configure do |config|
    config.formatter = :documentation
    end

RSpec.describe '#Vehicle' do
    it 'exists' do
        @vehicle = Vehicle.new("2001", "Honda", "Civic") 
        expect(@vehicle).to be_an_instance_of(Vehicle)
    end

    it 'can initialize' do
        @vehicle = Vehicle.new("2001", "Honda", "Civic")
        expect(@vehicle.year).to eq("2001")
        expect(@vehicle.make).to eq("Honda")
        expect(@vehicle.model).to eq("Civic")
    end
end
