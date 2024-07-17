require './lib/passenger'
require 'rspec'

RSpec.configure do |config|
    config.formatter = :documentation
    end

RSpec.describe '#Passenger' do
    before(:each)do
    @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    end
    it 'exists' do
        expect(@charlie).to be_an_instance_of(Passenger)
        expect(@taylor).to be_an_instance_of(Passenger)
    end

    it 'has passenger info' do
        expect(@charlie.name).to eq("Charlie")
        expect(@charlie.age).to eq(18)
        expect(@taylor.name).to eq("Taylor")
        expect(@taylor.age).to eq(12)
    end

    it 'is an adult if over age 18' do
        @charlie.adult?
        @taylor.adult?
        expect(@charlie.adult?).to eq true
        expect(@taylor.adult?).to eq false
    end

    it 'cannot be driver by default' do
        @charlie.driver?
        expect(@charlie.driver?).to eq false
    end

    it 'can be driver if drive method used' do
        @charlie.drive
        @taylor.drive
        expect(@charlie.driver?).to eq true
        expect(@taylor.driver?).to eq false
    end
end 