class Vehicle
    attr_reader :year,
                :make,
                :model,
                :speeds,
                :passengers
                # :adults
    
    def initialize(year, make, model)
        @year = year
        @make = make
        @model = model
        @speeds = false
        @passengers = []
        # @adults = 0
    end

    def speeding?
        @speeds
    end

    def speed
        @speeds = true
    end

    def add_passenger(passenger)
        @passengers << passenger
    end

    def num_adults
        @passengers.count { |passenger| passenger.age >= 18 }
    end

end