require './lib/vehicle'
require './lib/passenger'
require './lib/park'

RSpec.describe Park do
    before(:each) do
        @park1 = Park.new("Yosemite", 60)
        @park2 = Park.new("Glacier", 50)
    end

    it 'exists' do
        expect(@park1).to be_instance_of(Park)
    end

    it 'communitcates its attributes' do
        expect(@park1.name).to eq("Yosemite")
        expect(@park2.price).to eq(50)
    end
end