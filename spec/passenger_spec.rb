require "./lib/passenger"

RSpec.describe Passenger do
    it 'creates vehicles from the WA EV registrations data' do
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})

      expect(charlie.name).to eq('charlie') 
      expect(charlie.age).to eq(18) 
      
    end
  
  end