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
        it 'will hold a speeding attribute initialized to be false' do
            expect(@vehicle.speeding).to eq false
        end
        it 'will hold a passengers attribute initialized to be an empty array' do
            expect(@vehicle.passengers).to eq []
        end
    end

    describe '#speeding?' do
        it 'will return true or false based on the vehilces speeding attribute' do
           expect(@vehicle.speeding?).to eq false 
        end
    end

    describe '#speed' do
        it 'will update the speeding attribute from false to true' do
            expect(@vehicle.speeding?).to eq false
            expect{@vehicle.speed}.to change{@vehicle.speeding}.from(false).to(true)
        end

        it 'will NOT update the speeding attribute if it is set to true before the method is run' do
            @vehicle.speed
            expect(@vehicle.speeding?).to eq true
            expect{@vehicle.speed}.not_to change{@vehicle.speeding}
        end
    end

    describe '#add_passenger()' do

    end
    
    describe '#passengers' do

    end
    
    describe '#num_adults' do

    end
end
