require './lib/vehicle'
require './lib/passenger'
require './lib/park'

RSpec.describe Park do
    before(:each) do
        @flatwoods = Park.new({name: "Flatwoods", price: 2})
        @hillsborough = Park.new({name: "Hillsborough River", price: 4})
        @vehicle = Vehicle.new("2001", "Honda", "Civic")
        @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
        @jude = Passenger.new({"name" => "Jude", "age" => 20})
        @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    end

    describe '#initialize' do
        it 'can initialize' do
            expect(@flatwoods).to be_a_instance_of(Park)
            expect(@hillsborough).to be_a_instance_of(Park)
        end
        it 'has a name and admission price' do
            expect(@flatwoods.name).to eq("Flatwoods")
            expect(@flatwoods.admission).to eq(2)

            expect(@hillsborough.name).to eq("Hillsborough River")
            expect(@hillsborough.admission).to eq(4)
        end
    end

    describe '#vehicles_entered' do
        it 'lists all vehicles that entered the park' do
            expect(@flatwoods.vehicles_in_park).to eq([])

            @flatwoods.vehicles_entered(@vehicle)
            expect(@flatwoods.vehicles_in_park).to eq([@vehicle])
        end
    end
end