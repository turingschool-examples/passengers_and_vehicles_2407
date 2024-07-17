require "./lib/passenger"

Rspec.describe Passenger do
    before(:each) do
        Passenger.new({name: 'Charlie', age: '18', adult: 'false'})
        Passenger.new({name: 'Taylore', age: '12', adult: 'false'})
    end
    describe '#intitiazle' do 
        it 'can initiazle' do
            @passenger.each do |passenger|
            expect(passenger). to_be_an_instance_of(Passenger)
            end
        end
    end
end



#Passenger.new({"name" => "Charlie", "age" => 18}) Passenger.new({"name" => "Taylor", "age" => 12})    