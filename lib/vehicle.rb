class Vehicle
    attr_reader :year,
                :make,
                :model

    def initialize(vehicle_details)
        @year = vehicle_details[:year]
        @make = vehicle_details[:make]
        @model = vehicle_details[:model]
    end
end