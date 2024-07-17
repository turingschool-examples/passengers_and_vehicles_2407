class Park
    attr_reader :name,
                :price,
                :vehicles

    def initialize(name, price)
        @name = name
        @price = price
        @vehicles = []
    end

    def enter_park(vehicle)
        @vehicles << vehicle
    end
end