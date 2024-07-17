require './lib/passenger'

RSpec.describe Passenger do
    before(:each) do
        @passenger_1 = Passenger.new('Charlie', 18)
        @passenger_2 = Passenger.new('Taylor', 12)
    end

    it 'initialize name' do
        expect(@passenger_1.name).to eq('Charlie')
        expect(@passenger_2.name).to eq('Taylor')
    end

    it 'initialize age' do
        expect(@passenger_1.age).to eq(18)
        expect(@passenger_2.age).to eq(12)
    end

    it 'are they an adult' do
        expect(@passenger_1.adult?).to be(true)
        expect(@passenger_2.adult?).to be(false)
    end

    it 'are they able to drive' do
        expect(@passenger_1.driver?).to be(true)
        expect(@passenger_2.driver?).to be(false)
    end
end