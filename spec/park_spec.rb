require './lib/vehicle'
require './lib/passenger'
require './lib/park'

RSpec.describe Park do
    before(:each) do
        @park = Park.new
    end

    describe 'initialize' do
        it 'can exists' do
            expect(@park).to be_an_instance_of(Park)
        end
    end

end