class Vehicle

  attr_reader :year, :make, :model, :speed, :passengers

  def initialize(year, make, model)
    @year = year
    @make = make
    @model = model
    @speed = false
    @passengers = []
  end

  def speeding?
    @speed
  end

  def speed
    @speed = true
  end

  def add_passenger(passenger)
    @passengers.push(passenger)
  end

  def num_adults
    adults = []
    @passeners.map do |passenger|
      adults << passenger if passenger.drive? == true
    end
  end
end