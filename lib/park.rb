class Park
    
    attr_reader :name, :admission, :vehicles_in_park

    def initialize(park_info)
        @name = park_info[:name]
        @admission = park_info[:price]
        @vehicles_in_park = []
    end

    def vehicle_enters(vehicle)
        @vehicles_in_park << vehicle
    end

    def people_in_park
        if @vehicles_in_park.empty? == false
            passenger_names = nil
            passengers_in_vehicle = nil
            @vehicles_in_park.each do |vehicle|
                passengers_in_vehicle = vehicle.passengers
            end
            passengers_in_vehicle.map do |passenger|
                passenger_names = passenger.name
            end
        elsif @vehicles_in_park.empty? == true
            return nil
        end
    end
end