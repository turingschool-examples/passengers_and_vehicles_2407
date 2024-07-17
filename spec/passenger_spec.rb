require "./lib/passenger"
require "pry"

RSpec.configure do |config| 
 config.formatter = :documentation 
 end

 RSpec.describe Passenger do 
  before(:each) do 
    @charlie = Passenger.new({"name" => "Charlie", "age" => 18}) 
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12})   
  end

  it "can exist and have attributes" do
    expect(@charlie).to be_a(Passenger)
    expect(@charlie.name).to eq("Charlie")
    expect(@charlie.age).to eq(18)
  end

    it "can tell if passenger is an adult" do
     expect(@charlie.adult?).to be(true)
     expect(@taylor.adult?).to be(false)
    end

    it 'can say who can drive' do
      expect(@charlie.driver?).to be(false)

      @charlie.drive

      expect(@charlie.driver?).to be(true)
    end

end


