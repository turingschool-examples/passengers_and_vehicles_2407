require "./lib/passenger"

RSpec.describe do
    before(:all) do

    end

    describe 'name' do
        it 'has a name' do
            charlie = Passenger.new({"name" => "Charlie", "age" => 18})
            expect(charlie.name).to eq("Charlie")
        end
    end

    describe 'age' do
        it 'has an age' do
            charlie = Passenger.new({"name" => "Charlie", "age" => 18})
            expect(charlie.age).to eq(18)
        end
    end

    describe 'adult' do
        it 'might be an adult' do
            charlie = Passenger.new({"name" => "Charlie", "age" => 18})
            expect(charlie.adult?).to eq(true)
        end
    end

    describe 'name' do
        it 'has a name' do
            taylor = Passenger.new({"name" => "Taylor", "age" => 12})
            expect(taylor.name).to eq("Taylor")
        end
    end

    describe 'age' do
        it 'has an age' do
            taylor = Passenger.new({"name" => "Taylor", "age" => 12})
            expect(taylor.age).to eq(12)
        end
    end

    describe 'adult' do
        it 'might be an adult' do
            taylor = Passenger.new({"name" => "Taylor", "age" => 12})
            expect(taylor.adult?).to eq(false)
        end
    end
end