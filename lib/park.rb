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
        @vehicles = {}
        @passengers = {}
        @revenue = 0
    end
end