class Park
    attr_reader :name, :price, :entrance_list, :guest_list, :revenue

    def initialize(name, price)
        @name = name
        @price = price
        @entrance_list = []
        @guest_list = []
        @revenue = 0
    end

    def enter(vehicle)
        @entrance_list << vehicle
    end

    def head_count(vehicle)
        @guest_list
        vehicle.passengers.each do |passenger|
            @guest_list << passenger
        end
    end

   
end