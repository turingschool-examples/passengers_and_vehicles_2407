require "./lib/passenger"

RSpec.describe Passenger do 
  before(:each) do 
    @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
  end

  describe 'Passengers' do 
    it 'returns names and ages' do 
      expect(@charlie.name).to eq("Charlie")
      expect(@taylor.name).to eq("Taylor")
      expect(@charlie.age).to eq(18)
      expect(@taylor.age).to eq(12)
    end

    describe 'adult?' do 
      it 'returns adult if your 18 or older' do 
        expect(@charlie.adult?).to eq(true)
        expect(@taylor.adult?).to eq(false)
      end
    end
  end

end