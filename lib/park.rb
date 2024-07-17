class Park
    attr_reader :name, :admission, :vehicles

    def initialize(name, admission)
        @name = name
        @admission = admission
        @vehicles = []
    end

    def add_vehicle(vehicle)
        @vehicles << vehicle
    end

    def all_passengers
        # list all of the passengers from all of the vehicles
        # require 'pry'; binding.pry
        all_passengers = @vehicles.map { |vehicle| vehicle.passengers }
        all_passengers.flatten
    end
end