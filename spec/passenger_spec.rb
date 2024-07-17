require "./lib/passenger"

RSpec.describe Passenger do
  before(:each) do 
    @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
  end

  it 'exists' do 

  end

  it 'has attributes' do
    # name and age
  end

  it 'can tell if passenger is an adult' do

  end

  it 'can tell if passenger is driver' do

  end

  


end