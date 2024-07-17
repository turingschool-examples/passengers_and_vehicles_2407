require "./lib/passenger"
require "./lib/vehicle"

RSpec.describe Vehicle do
    before(:each) do
        @vehicle = Vehicle.new("2001", "Honda", "Civic")
      end

    describe '#initialize' do
      it 'can initialize' do
        expect(@vehicle).to be_an_instance_of(Vehicle)
        
      end
    end

end
