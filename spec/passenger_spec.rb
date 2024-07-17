require "./lib/passenger"

RSpec.describe Passenger do
    before(:each) do
        @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
        @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    end

    describe '#initialize' do
        it 'can initialize' do
            expect(@charlie).to be_a_instance_of(Passenger)
            expect(@taylor).to be_a_instance_of(Passenger)
        end
        it 'has a name and age' do
            expect(@charlie.name).to eq("Charlie")
            expect(@taylor.name).to eq("Taylor")
            expect(@charlie.age).to eq(18)
            expect(@taylor.age).to eq(12)
        end
    end

    describe '#adult?' do
        it 'gives true or false for adult' do
            expect(@charlie.adult?).to eq(true)
            expect(@taylor.adult?).to eq(false)
        end
    end

    describe '#driver?' do
        it 'gives true or false for driver?' do 
            expect(@charlie.driver?).to eq(false)
            @charlie.drive
            expect(@charlie.driver?).to eq(true)
        end
    end
end