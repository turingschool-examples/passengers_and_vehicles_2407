require "./lib/passenger"

RSpec.describe Passenger do 
  before(:each) do 
    @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
  end

  describe 'Passengers' do 
    it 'have a name' do 
      expect(@charlie.name).to eq("Charlie")
      expect(@taylor.name).to eq("Taylor")
    end
  end

end