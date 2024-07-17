require './lib/vehicle'
require './lib/passenger'

RSpec.describe Vehicle do
    before(:each) do
        @vehicle = Vehicle.new("2001", "Honda", "Civic")   
    end

    describe 'initialize' do
        it 'can exists' do
            expect(@vehicle).to be_an_instance_of(Vehicle)
        end

        it 'has attributes' do
            expect(@vehicle.year).to eq "2001"
            expect(@vehicle.make).to eq "Honda"
            expect(@vehicle.model).to eq "Civic"
        end
    end

    describe 'speeding' do
        it 'sets speeding to default as false' do
            expect(@vehicle.speeding?).to eq false
        end

        it 'changes speeding to true shen speed method is used' do
            @vehicle.speed

            expect(@vehicle.speeding?).to eq true
        end
    end
end