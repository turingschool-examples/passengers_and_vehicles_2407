require './lib/vehicle'

RSpec.describe Vehicle do
    before(:each) do
        @vehicle = Vehicle.new(year: '2001', make: 'Honda', model: 'Civic')
    end

    describe 'initialize' do
        it 'exists' do
          expect(@vehicle).to be_an_instance_of(Vehicle)
        end
    
        it 'has a year' do
          expect(@vehicle.year).to eq('2001')
        end
    
        it 'has a make' do
          expect(@vehicle.make).to eq('Honda')
        end
    
        it 'has a model' do
          expect(@vehicle.model).to eq('Civic')
        end
    end
end