require './lib/passenger'
require 'rspec'

RSpec.configure do |config|
    config.formatter = :documentation
    end

RSpec.describe '#passenger' do
    before(:each)do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    end
    it 'exists' do
        @passenger = Passenger.new
        @charlie = Passenger.new
        @taylor = Passenger.new

        expect(@passenger).to be_an_instance_of(Passenger)
        expect(@charlie).to be_an_instance_of(Passenger)
        expect(@taylor).to be_an_instance_of(Passenger)
    end

    it 'has passenger info' do

    end
end