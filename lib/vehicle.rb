require "./lib/passenger"

class Vehicle
    attr_reader :year,
                :make,
                :model,
                :speeding,
                :passengers

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
        if @speeding == false
            @speeding = true
        end
    end

    def add_passenger(passenger)
        @passengers << passenger
    end

    def num_adults
        total = @passengers.count do |person|
            person.adult?
        end
        total
    end
end