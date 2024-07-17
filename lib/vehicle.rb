class Vehicle

  attr_reader :year, :make, :model

  def initialize(year, make, model)
    @year = year
    @make = make
    @model = model
    @moving_fast = false
  end

  def speed
    @moving_fast = true
  end

  def speeding?
    @moving_fast
  end
  

end