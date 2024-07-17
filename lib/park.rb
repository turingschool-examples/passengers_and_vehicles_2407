class Park
    
    attr_reader :name, :admission, :vehicles_in_park

    def initialize(park_info)
        @name = park_info[:name]
        @admission = park_info[:price]
        @vehicles_in_park = []
    end

    def vehicles_entered(vehicle)
        @vehicles_in_park << vehicle
    end
end