require './lib/vehicle'
require './lib/passenger'

RSpec.describe Vehicle do
    before(:each) do
        @vehicle = Vehicle.new("2001", "Honda", "Civic")
    end

    it 'exists' do
        expect(@vehicle).to be_instance_of(Vehicle)
    end
end