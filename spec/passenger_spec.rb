require "./lib/passenger"
require 'rspec'

RSpec.configure do |config|
    config.formatter = :documentation
end

RSpec.describe'Passenger' do
    before(:each) do
        @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
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

    end

    describe '#driver?' do

    end

    describe '#drive' do

    end
end