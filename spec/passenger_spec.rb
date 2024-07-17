require "./lib/passenger"

Rspec.new Passenger do
    describe '#initialize' do
        before(:each) do
            Passenger.new({"name" => "Charlie", "age" => 18})
        end

        it 'exists' do
            expect(passenger).to be_an_instance Passenger
        end
    end

    describe '#adult?' do
    end

    describe '#driver' do
    end
end