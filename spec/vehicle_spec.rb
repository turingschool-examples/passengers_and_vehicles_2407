require './lib/vehicle'
require './lib/passenger'

RSpec.describe Vehicle do
    before(:each) do
        @vehicle = Vehicle.new("2001", "Honda", "Civic")
    end

    describe '#initialize' do
        it 'can initialize' do
            expect(@vehicle).to be_a_instance_of(Vehicle)
        end
        it 'has a year, make, model' do
            expect(@vehicle.year).to eq("2001")
            expect(@vehicle.make).to eq("Honda")
            expect(@vehicle.model).to eq("Civic")
        end
    end

    describe '#speeding?' do
        it 'gives true or false for speed' do
            expect(@vehicle.speeding?).to eq(false)
            @vehicle.speed
            expect(@vehicle.speeding?).to eq(true)
        end
    end
end