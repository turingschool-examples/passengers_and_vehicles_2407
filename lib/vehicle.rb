class Vehicle
  attr_reader :year, :make, :model, :passengers

  def initialize(year, make, model)
    @year = year
    @make = make
    @model = model
    @speeding = false
    @passengers = []
  end

  def speeding?
    @speeding
  end
  
  def speed
    @speeding = true
  end
  
  def add_passenger(passenger)
    @passengers << passenger 
  end

  def num_adults
    adult_count = 0
    @passengers.each do |passenger|
      adult_count += 1 if passenger.adult?
    end
    adult_count
  end
end