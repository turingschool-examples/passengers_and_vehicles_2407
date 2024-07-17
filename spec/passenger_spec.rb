require "./lib/passenger"

RSpec.describe Passenger do
    before(:each) do
        @passenger = Passenger.new({"name" => "Charlie", "age" => 18}) 
    end

    describe '#initialize' do
        it 'exists' do
            expect(@passenger).to be_an_instance_of(Passenger)
        end

        it'has parameters' do

        end
    end
end