class Vehicle
    attr_reader :year, :make, :model, :speeding, :passengers

    def initialize(year, make, model, speeding = false)
        @year = year
        @make = make
        @model = model
        @speeding = speeding
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
            if passenger.adult? 
                adult_count += 1
            end
        end
       adult_count
    end

end