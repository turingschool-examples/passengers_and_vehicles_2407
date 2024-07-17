class Vehicle
    attr_reader :year,
                :make,
                :model

    def initialize(year, make, model)
        @year = year
        @make = make
        @model = model
        @speeding = false
    end

    def speed
        @speeding = true
    end

    def speeding?
        @speeding
    end
end