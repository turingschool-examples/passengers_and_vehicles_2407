require "./lib/passenger"

RSpec.describe Passenger do
    before(:each) do
        @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
        @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    end

    it 'exists' do
        expect(@charlie).to be_instance_of(Passenger)
    end 

    it 'can retrieve attributes' do
        expect(@charlie.name).to eq("Charlie")
        expect(@taylor.name).to eq("Taylor")
    end

    it 'knows if passenger is adult' do
        expect(@charlie.adult?).to be true
        expect(@taylor.adult?).to be false
    end


end