class Vehicle

  attr_reader :year, :make, :model, :passengers

  def initialize(year, make, model)
    @year = year
    @make = make
    @model = model
    @moving_fast = false
    @passengers = []
  end

  def speed
    @moving_fast = true
  end

  def speeding?
    @moving_fast
  end
  
  def add_passenger(passenger)
    @passengers << passenger
  end

  def num_adults
    if @passengers == []
      return 0
    end
    count = 0
    @passengers.each do |passenger|
      if passenger.adult?
        count += 1
      end

    end
    return count
  end
end