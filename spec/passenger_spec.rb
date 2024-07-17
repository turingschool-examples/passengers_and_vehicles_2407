require "./lib/passenger"

RSpec.describe Passenger do
    describe '#initialize' do
        before(:each) do
            @passenger = Passenger.new({"name" => "Charlie", "age" => 18})
        end

        it 'exists' do
            expect(@passenger).to be_an_instance_of Passenger
        end

        it 'initializes with name and age' do
            expect(@passenger.name).to eq "Charlie"
            expect(@passenger.age).to eq 18
        end
    end

    describe '#adult?' do
    end

    describe '#driver' do
    end
end