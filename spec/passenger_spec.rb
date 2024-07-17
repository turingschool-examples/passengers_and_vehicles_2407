require "./lib/passenger"

RSpec.describe Passenger do
    before(:each) do
        @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
        @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    end

    describe '#initialize' do
        it 'initializes a passenger' do
        expect(@charlie).to be_an_instance_of(Passenger)
        end
    end

    it 'creates passenger' do
        expect(@charlie.name).to eq('Charlie') 
        expect(@charlie.age).to eq(18) 
    end

    it 'asks if it is an adult?' do
        charlie = Passenger.new({"name" => "Charlie", "age" => 18})
        taylor = Passenger.new({"name" => "Taylor", "age" => 12})

        expect(@charlie.adult?).to eq(true)
        expect(@taylor.adult?).to eq(false)
    end


  end