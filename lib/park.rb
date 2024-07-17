class Park
    attr_reader :name, :admission, :vehicles, :revenue_collected

    def initialize(name, admission)
        @name = name
        @admission = admission
        @vehicles = []
        @revenue_collected = 0
    end

    def add_vehicle(vehicle)
        @vehicles << vehicle
    end

    def all_passengers
        all_passengers = @vehicles.map { |vehicle| vehicle.passengers }
        all_passengers.flatten
    end

    def collect_fee(vehicle)
        all_passengers = @vehicles.map { |vehicle| vehicle.passengers }
        all_passengers = all_passengers.flatten
        adults = all_passengers.select { |passenger| passenger.adult?}
        @revenue_collected = adults.count * @admission
    end

    def list_adults
        all_passengers = @vehicles.map { |vehicle| vehicle.passengers }
        all_passengers = all_passengers.flatten
        adults = all_passengers.select { |passenger| passenger.adult?}
        adults_in_order = adults.sort_by { |adult| adult.name } 
    end
end