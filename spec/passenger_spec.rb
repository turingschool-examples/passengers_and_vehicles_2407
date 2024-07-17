require "./lib/passenger"

RSpec.configure do |config|
    config.formatter = :documentation
    end

RSpec.describe '#passenger' do
    it 'exists' do
        @passenger = Passenger.new("Charlie", 18)
        expect(@passenger).to be_an_instance_of(Passenger)
    end

    it 'has a name' do
        @passenger = Passenger.new("Charlie", 18)
        expect(@passenger.name).to eq("Charlie")
    end

    it 'has an age' do
        @passenger = Passenger.new("Charlie", 18)
        expect(@passenger.age).to eq(18)
    end
end