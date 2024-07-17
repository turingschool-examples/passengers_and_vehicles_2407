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
    end
end