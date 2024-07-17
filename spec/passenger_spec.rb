require "./lib/passenger"
require 'rspec'

RSpec.configure do |config|
    config.formatter = :documentation
end

RSpec.describe'Passenger' do
    before(:each) do
        @charlie = Passenger.new({"name" => "charlie", "age" => 18})
    end

    describe '#initialize' do
        it 'will be an isntance of a passenger' do
            expect(@charlie).to be_an_instance_of Passenger
        end
    end

    describe '#adult?' do 

    end

    describe '#driver?' do

    end

    describe '#drive' do

    end
end