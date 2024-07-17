class Passenger
    attr_reader :name, :age, :driver

    def initialize(passenger_data)
        @passenger_data = passenger_data
        @name = passenger_data["name"]
        @age = passenger_data["age"]
        @driver = false
    end

    def adult?
        return false unless @age >= 18
        true
    end

    def driver?
        @driver
    end

    def drive
        @driver = true
    end
end