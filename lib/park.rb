class Park
    attr_reader :name, :price, :entrance_list

    def initialize(name, price)
        @name = name
        @price = price
        @entrance_list = []
    end

    def enter(vehicle)
        @entrance_list << vehicle
    end

   
end