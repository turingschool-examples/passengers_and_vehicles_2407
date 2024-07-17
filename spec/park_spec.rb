require './lib/vehicle'
require "./lib/passenger"
require "./lib/park"

RSpec.configure do |config|
  config.formatter = :documentation
end

RSpec.describe Park do
  before(:each) do
    @park = Park.new("Eliches", 30)
  end

  describe '#initialize' do
    it 'can initialize' do
      expect(@park).to be_an_instance_of(Park)
    end
  end

  describe '#all vehicles' do
    it 'will list all vehicles to have entered at the start of the day' do
      expect(@parks.add_vehicle)(@vehicle)
      expect(@park.total_vehicles) to eq([@vehicle])
    end
  end
end




#Iteration 4

## Iteration 4

# The National Park Service has given you additional functionality it would like you to implement. 
# They would like to be able to track patrons of their parks. They would like to be able to generate a list of names of all attendees, 
# as well as generate a list of minors and a list of adults. It would like all of these lists to be sorted alphabetically.

