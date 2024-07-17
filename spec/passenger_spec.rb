require "./lib/passenger"

RSpec.describe Passenger do
    before(:each) do
        @charlie = Passenger.new({"name" => "Charlie", "age" => 18}) 
        @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
        @bob = Passenger.new({"name" => "Bob", "age" => 35})
    end

    describe '#initialize' do
        it 'exists' do
            expect(@charlie).to be_an_instance_of(Passenger)
        end

        it 'has parameters' do
            expect(@charlie.name).to eq("Charlie")
            expect(@charlie.age).to eq(18)
        end

        it 'can have a new name' do
            expect(@taylor.name).to eq("Taylor")
            expect(@taylor.age).to eq(12)
        end
    end

    describe 'adult' do
        it 'can be an adult' do
            expect(@charlie.adult?).to be true
            expect(@bob.adult?).to be true
        end

        it 'can not be an adult' do
            expect(@taylor.adult?).to be false
        end
    end

    describe 'drive' do
        it 'can test if driver? is false by default' do
            expect(@charlie.driver?).to be false    
        end

        it 'can change driver? to true if they drive' do
            @charlie.drive

            expect(@charlie.driver?).to be true
        end
    end 
end