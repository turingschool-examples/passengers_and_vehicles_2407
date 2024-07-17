require "./lib/passenger"

RSpec.describe Passenger do 
  before(:each) do 
    @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
  end

  
end