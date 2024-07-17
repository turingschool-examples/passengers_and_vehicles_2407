require "./lib/passenger"

Rspec.describe Passenger do
    before(:each) do
        Passenger.new({name: 'Charlie', age: '18', adult: 'false'})
        Passenger.new({name: 'Taylore', age: '12', adult: 'false'})
    end
    require 'pry'; binding.pry




#Passenger.new({"name" => "Charlie", "age" => 18}) Passenger.new({"name" => "Taylor", "age" => 12})    