require './lib/vehicle'

class Park 

    attr_reader :name,
                :admission_price,
                :vehicles,
                :passengers,
                :revenue

    def initialize(name, admission_price)
        @name = name
        @admission_price = admission_price
        @vehicles = []
        @passengers = []
        @revenue = 0
    end

    def admit(vehicle)
        @vehicles << vehicle
        admit_passengers(vehicle)
    end

    def admit_passengers(vehicle)
        vehicle.passengers.each do |passenger|
            @passengers << passengers
        end
    end

    def generate_revenue
        @revenue
    end
end