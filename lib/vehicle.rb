class Vehicle

    attr_reader :year, :make, :model

    def initialize(year, make, model)
        @year = year
        @make = make
        @model = model
        @speed = false
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
end