require "./lib/passenger"

RSpec.describe Passenger do
    before(:each) do
        @passenger_1 = Passenger.new('Charlie', 18)
        @passenger_2 = Passenger.new('Taylor', 12)
    end
    
end