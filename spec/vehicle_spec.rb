require "./lib/vehicle"
require_relative passenger.rb

Rspec.describe 'vehicle' do
    before(:each) do
        Vehicle.new({vehicle_make: 'Honda', vehicle_model: 'Civic', speeding: 'false' })        
    end

    describe '#intialze' do
        it 'can initialze' do
            @vehicle.each do |vehicle|
            expect(vehicle).to_be_an_instance_of(Vehicle)
            end
        end
    end

    describe '#add passengers' do
        it 'can add new passengers' do
            new_passengers = Passenger.new({name: 'Jude', :age '20', :adult 'true'})
            @passenger << new_passengers

            expect(@passenger).to include(new_passengers)
        end
    end
end