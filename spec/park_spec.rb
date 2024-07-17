require './lib/vehicle'
require './lib/passenger'
require './lib/park'

RSpec.describe Park do
    before(:each) do
        @flatwoods = Park.new({name: "Flatwoods", price: 2})
        @hillsborough = Park.new({name: "Hillsborough River", price: 4})
    end

    describe '#initialize' do
        it 'can initialize' do
            expect(@flatwoods).to be_a_instance_of(Park)
            expect(@hillsborough).to be_a_instance_of(Park)
        end
        it 'has a name and admission price' do
            expect(@flatwoods.name).to eq("Flatwoods")
            expect(@flatwoods.admission).to eq(2)

            expect(@hillsborough.name).to eq("Hillsborough River")
            expect(@hillsborough.admission).to eq(4)
        end
    end
end