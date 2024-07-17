require "./lib/passenger"

RSpec.describe Passenger do
    before(:each) do
        @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
        @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
        @george = Passenger.new({"name" => "George", "age" => 35})
    end

    describe '#initialize' do
        it 'exists' do
            expect(@charlie).to be_an_instance_of Passenger
        end

        it 'initializes with name and age' do
            expect(@charlie.name).to eq "Charlie"
            expect(@charlie.age).to eq 18
        end
    end

    describe '#adult?' do
        it "has the attribute adult" do
            expect(@charlie.adult?).to eq true
        end

        it "verifies adult age is >= 18" do
            expect(@charlie.check_age).to eq true
            expect(@george.check_age).to eq true
            expect(@taylor.check_age).to eq false
        end

        it 'can return true or false' do
            expect(@charlie.adult?).to eq true
            expect(@taylor.adult?).to eq false
        end
    end

    describe '#driver' do
        it 'has driver attribute' do
            expect(@charlie.driver?).to be false
            expect(@taylor.driver?).to be false
        end

        it 'can be changed to true' do
            expect(@charlie.driver?).to be false
            @charlie.drive
            expect(@charlie.driver?).to be true
        end
    end
end