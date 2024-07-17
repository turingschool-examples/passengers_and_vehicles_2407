require "./lib/vehicle"
require 'rspec'

RSpec.configure do |config|
    config.formatter = :documentation
end

RSpec.describe 'Vehicle' do
    before(:each) do
        @vehicle = Vehicle.new("2001", "Honda", "Civic")
        @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
        @jude = Passenger.new({"name" => "Jude", "age" => 20})  
        @taylor = Passenger.new({"name" => "Taylor", "age" => 12})

    end

    describe '#initialize' do
        it 'will initialize an instance of the Car class' do
            expect(@vehicle).to be_an_instance_of Vehicle
        end

        it 'will hold a year attribute based on the argument' do
            expect(@vehicle.year).to eq "2001"
        end
        it 'will hold a make attribute based on the argument' do
            expect(@vehicle.make).to eq "Honda"
        end
        it 'will hold a model attribute based on the argument' do
            expect(@vehicle.model).to eq "Civic"
        end
    end

    describe '#speeding?' do

    end

    describe '#speed' do

    end

    describe '#add_passenger()' do

    end
    
    describe '#passengers' do

    end
    
    describe '#num_adults' do

    end
end
