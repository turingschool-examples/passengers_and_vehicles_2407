class Vehicle

    attr_reader :year, :make, :model, :passengers

    def initialize(year, make, model)
        @year = year
        @make = make
        @model = model
        @speed = false
        @passengers = []
    end
    
    def speed
        @speed = true
    end

    def speeding?
        if @speed == false
            false
        elsif @speed == true
            true
        end
    end

    def add_passenger(passenger_name)
        @passengers.push(passenger_name)
    end

    def num_adults
        number_of_adults = []
        @passengers.find_all do |passenger|
            number_of_adults << passenger if passenger.adult? == true
        end
        number_of_adults.length
    end

end