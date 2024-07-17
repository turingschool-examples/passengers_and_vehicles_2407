class Passenger
    attr_reader :name,
                :age,
                :driver

    def initialize(passenger_info)
        @name = passenger_info["name"]
        @age = passenger_info["age"]
        @driver = false
    end

    def adult?
        if self.age >= 18
            true
        else 
            false
        end
    end

    def driver?
        @driver
    end

    def drive
        if self.driver == false
            @driver = true
        end
    end
end