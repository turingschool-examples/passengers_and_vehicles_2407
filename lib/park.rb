require './lib/vehicle'

class Park 

    attr_reader :name,
                :admission_price,
                :vehicles,
                :passengers


    attr_accessor :revenue

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
        charge = @admission_price.gsub(/[^\d]/, '').to_i
        total = 0
        @passengers.length.times do |person|
            total += 1
        end
        @revenue = total * charge
    end
end