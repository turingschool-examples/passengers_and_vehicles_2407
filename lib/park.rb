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

    def vehicle_passengers
        @vehicles.flat_map do |vehicle|
          vehicle.passengers.map do |passenger|
            passenger.name
          end
        end
    end
   

    def potential_revenue
        total_charge = 0
         @vehicles.each do |vehicle|
            vehicle.passengers.each do |passenger|
            if passenger.age >= 18  
                total_charge += @price 
            end
         end
       end
       total_charge
   end
end
