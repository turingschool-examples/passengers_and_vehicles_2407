require './lib/park'

Rspec.describe Park do
    before(:each) do
        @Park = Park.new({name: 'Theodore National Park', address: '123 Athens Drive' phone: '(435)9990-5567'})
    end
    describe '#initizale' do
        it 'can initiazle' do
            expect(@park).to to_be_an_instance_of(Park)
            expect(@park.name).to eq('Theodore National Park')
            expect(@park.address).to eq('123 Athens Drive')
            expect(@park.phone) to eq('435)9990-5567')
        end
    end

    describe '#add serivces' do
        it 'can add serivces' do
            expect(@park_services) to eq([])
            @park.add_service('admission price')
            @park.add_service('Current Vehicles')
            expect(@park_services) to eq (['admission price, Current Vehicles'])
        end
    end
end