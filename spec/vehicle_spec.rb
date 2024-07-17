require './lib/vehicle'
require './lib/passenger'

RSpec.describe Vehicle do 
  before(:each) do 
    @vehicle = Vehicle.new("2001", "Honda", "Civic")
  end

  describe 'Vehicle' do 
    it 'was made this year' do 
      expect(@vehicle.year).to eq("2001")
    end
  end
  
end