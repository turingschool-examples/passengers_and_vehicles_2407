require './lib/passenger'
require './lib/vehicle'
require './lib/park'



RSpec.describe Park do
  before(:each) do
    #Park
    @park_1 = Park.new("Zion", 10)
    #Vehicles
    @vehicle_1 = Vehicle.new("2001", "Honda", "Civic")
    @vehicle_2 = Vehicle.new("2013", "Chevrolet", "Cruze")
    #Passengers
    @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12}) 
    @jude = Passenger.new({"name" => "Jude", "age" => 20}) 
    @steve = Passenger.new({"name" => "Steve", "age" => 21})
    @caitlin = Passenger.new({"name" => "Caitlin", "age" => 16}) 
    @sarah = Passenger.new({"name" => "Sarah", "age" => 25})   
  end

  describe "#initialize" do
    it "can initialize" do
      expect(@park_1).to be_an_instance_of(Park)
      expect(@park_1.name).to eq("Zion")
      expect(@park_1.price).to eq(10)
      expect(@park_1.vehicles).to eq([])
      expect(@park_1.passengers).to eq([])
      expect(@park_1.revenue).to eq(0)

    end

  end
  describe "#add_vehicle" do
    it "can list all the vehicles that entered the park" do
      @park_1.add_vehicle(@vehicle_1)
      @park_1.add_vehicle(@vehicle_2)

      expect(@park_1.vehicles).to eq([@vehicle_1, @vehicle_2])
    end

    it "will keep track of all passengers" do
      #vehicle_1, 2 passengers
      @vehicle_1.add_passenger(@charlie)
      @vehicle_1.add_passenger(@taylor)

      @park_1.add_vehicle(@vehicle_1)
      expect(@park_1.passengers).to eq([@charlie, @taylor])

      #vehicle_2, 1 passenger
      @vehicle_2.add_passenger(@jude)

      @park_1.add_vehicle(@vehicle_2)
      expect(@park_1.passengers).to eq([@charlie, @taylor, @jude])

    
    end
    
    it "can calculate revenue for each adult that entered" do
      #vehicle_1, 1 adult, 2 passengers
      @vehicle_1.add_passenger(@charlie)
      @vehicle_1.add_passenger(@taylor)
      @park_1.add_vehicle(@vehicle_1)

      expect(@park_1.revenue).to eq(10)

      #vehicle_1, 1 adult, 1 passenger
      @vehicle_2.add_passenger(@jude)
      @park_1.add_vehicle(@vehicle_2)

      expect(@park_1.revenue).to eq(20)

    end

  end

  describe "#list_adult_attendees" do
    it "will return all adult attendees in an array" do
      @vehicle_1.add_passenger(@charlie) # adult
      @vehicle_1.add_passenger(@taylor) # kid
      @vehicle_1.add_passenger(@caitlin) # kid
      @vehicle_1.add_passenger(@steve) #adult
      @park_1.add_vehicle(@vehicle_1)

      @vehicle_2.add_passenger(@jude) #adult
      @vehicle_2.add_passenger(@sarah) #adult
      @park_1.add_vehicle(@vehicle_2)

      expect(@park_1.list_adult_attendees).to eq([
        "Charlie",
        "Steve",
        "Jude",
        "Sarah"
    ].sort)
    end

    ## Edge cases
    # Edge case #1
    it "will return an emtpy array if there hasn't been an attendee" do
      expect(@park_1.list_adult_attendees).to eq([])
    end

    #Edge case #2
    it "will return an emtpy array if there are no adult attendees" do
      @vehicle_2.add_passenger(@caitlin) #kid
      @vehicle_2.add_passenger(@taylor) #kid
      @park_1.add_vehicle(@vehicle_2)
      
      expect(@park_1.list_adult_attendees).to eq([])
    end

  end

  describe "#list_children_attendees" do
    it "will return all children attendees in an array" do
      @vehicle_1.add_passenger(@charlie) # adult
      @vehicle_1.add_passenger(@taylor) # kid
      @vehicle_1.add_passenger(@caitlin) # kid
      @vehicle_1.add_passenger(@steve) #adult
      @park_1.add_vehicle(@vehicle_1)

      @vehicle_2.add_passenger(@jude) #adult
      @vehicle_2.add_passenger(@sarah) #adult
      @park_1.add_vehicle(@vehicle_2)

      expect(@park_1.list_children_attendees).to eq([
        "Taylor",
        "Caitlin"
    ].sort)
    end

    ## Edge cases
    # Edge case #1
    it "will return an emtpy array if there hasn't been an attendee" do
      expect(@park_1.list_children_attendees).to eq([])
    end

    #Edge case #2
    it "will return an emtpy array if there are no children attendees" do
      @vehicle_2.add_passenger(@jude) #adult
      @vehicle_2.add_passenger(@sarah) #adult
      @park_1.add_vehicle(@vehicle_2)
      
      expect(@park_1.list_children_attendees).to eq([])
    end



  end


end