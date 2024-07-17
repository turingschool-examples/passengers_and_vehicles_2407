require './lib/vehicle'

RSpec.describe Vehicle do
    before(:each) do
        @civic = Vehicle.new(year: '2001', make: 'Honda', model: 'Civic')
    end

    describe 'initialize' do
        it 'exists' do
          expect(@civic).to be_an_instance_of(Vehicle)
        end
    
        it 'has a year' do
          expect(@civic.year).to eq('2001')
        end
    
        it 'has a make' do
          expect(@civic.make).to eq('Honda')
        end
    
        it 'has a model' do
          expect(@civic.model).to eq('Civic')
        end
    end
end