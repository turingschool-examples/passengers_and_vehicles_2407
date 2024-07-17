require "./lib/passenger"

Rspec.describe do
    before(:all) do

    end

    describe 'name' do
        it 'has a name' do
            charlie = Passenger.new({"name" => "Charlie", "age" => 18})
            taylor = Passenger.new({"name" => "Taylor", "age" => 12})
            expect(passenger_1.name).to eq("Charlie")
            expect(passenger_2.name).to eq("Taylor")
        end
    
    describe 'age' do
        it 'has an age' do
            charlie = Passenger.new({"name" => "Charlie", "age" => 18})
            taylor = Passenger.new({"name" => "Taylor", "age" => 12})
            expect(passenger_1.age).to eq(18)
            expect(passenger_2.age).to eq(12)
        end
    end

    describe 'adult' do
        it 'is an adult' do
            charlie = Passenger.new({"name" => "Charlie", "age" => 18})
            taylor = Passenger.new({"name" => "Taylor", "age" => 12})
            expect(passenger_1.adult?).to eq(true)
            expect(passenger_2.adult?).to eq(false)
        end
    end
end