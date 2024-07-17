require './lib/vehicle'
require './lib/passenger'

RSpec.describe Vehicle do
    before(:each) do
        @vehicle = Vehicle.new("2001", "Honda", "Civic")
    end

    it 'exists' do
        expect(@vehicle).to be_instance_of(Vehicle)
    end

    it 'knows if speeding' do
        expect(@vehicle.speeding?).to be false

        @vehicle.speed

        expect(@vehicle.speeding?).to be true
    end

    it 'can contain passengers' do
        expect(@vehicle.passengers).to eq ([])
    end
end