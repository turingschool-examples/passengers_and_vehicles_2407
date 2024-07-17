require "./lib/passenger"
require 'rspec'

RSpec.configure do |config|
    config.formatter = :documentation
end

RSpec.describe'Passenger' do
    before(:each) do
        @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
        @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    end

    describe '#initialize' do
        it 'will be an isntance of a passenger' do
            expect(@charlie).to be_an_instance_of Passenger
        end
        # require'pry';binding.pry
        it 'will hold a hash attribute with a name key/value pair' do
            expect(@charlie.name).to eq "Charlie"
        end
        
        it 'will hold a hash attribute with an age key/value pair' do
            expect(@charlie.age).to eq 18
        end
    end

    describe '#adult?' do 
        it 'will return true or false depending on if the passenger instance is 18 + or not' do
            expect(@charlie.adult?).to eq true
            expect(@taylor.adult?).to eq false
        end
    end

    describe '#driver?' do
        it 'will return true or false depending on if the passenger instance considered a driver or not' do
            expect(@charlie.driver?).to eq false
            expect(@taylor.driver?).to eq false
        end
    end

    describe '#drive' do
        it 'will update the @driver status of a Passenger instance from false to true' do
            expect(@charlie.driver).to eq false
            expect{@charlie.drive}.to change{@charlie.driver}.from(false).to(true)
        end

        it 'will NOT update the @driver status of a Passenger instance if the instance is already a driver' do
            @charlie.drive
            expect(@charlie.driver).to eq true
            expect{@charlie.drive}.not_to change{@charlie.driver}
        end
    end
end