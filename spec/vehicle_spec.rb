require './lib/vehicle'

RSpec.describe Vehicle do
    before(:each) do
        @civic = Vehicle.new(year: '2001', make: 'Honda', model: 'Civic')
    end

    describe 'initialize' do
        expect(@civic).to be_an_instance_of(Vehicle)
        expect(@civic.year).to eq(2001)
        expect(@civic.make).to eq('Honda')
        expect(@civic.model).to eq('Civic')
    end
end