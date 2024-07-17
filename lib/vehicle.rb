Class Vehicle
  attr_reader :year, :make, :model, :speed

  def initialize(year, make, model)
    @year = year
    @make = make
    @model = model
    @speed = speed
    passengers = []
  end

  def speeding?
    false
  end

  def add_passengers
    passengers += 1
  end

  def num_adults
    @adult?.count
  end
 
end