require "./lib/passenger"

RSpec.describe Passenger do


    describe '#initialize' do
        it 'exists' do
            passenger = Passenger.new
            expect(passenger).to be_an_instance_of(Passenger)
        end
    end
end