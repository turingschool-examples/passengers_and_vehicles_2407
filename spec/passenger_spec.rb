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
        require'pry';binding.pry
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

    end

    describe '#drive' do

    end
end