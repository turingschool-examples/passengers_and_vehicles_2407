require './lib/vehicle'
require './lib/passenger'
require './lib/park'

RSpec.describe Park do
    before(:each) do
        @park = Park.new("Yellowstone", 50)
    end

    describe 'initialize' do
        it 'can exists' do
            expect(@park).to be_an_instance_of(Park)
        end

        it 'has attributes' do
            expect(@park.name).to eq "Yellowstone"
            expect(@park.admission).to be 50
        end
    end

    describe 'vehicles' do
        it 'has an empty arraw for vehicles' do
            expect(@park.vehicles).to eq []
        end
    end

end