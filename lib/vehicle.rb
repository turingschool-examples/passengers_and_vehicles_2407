class Vehicle
    attr_reader :vehicle_make, :vehicle_model:, speeding

    def initialze(vehicle_make, vehicle_model, speeding)
        @vehicle_make = vehicle_make
        @vehicle_model = vehicle_model
        @speeding = speeding
    end

    def vehicle.add(passengers)
        @passenger << passengers
    end
end