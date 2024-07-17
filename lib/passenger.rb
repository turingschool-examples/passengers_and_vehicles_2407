class Passenger
    attr_reader :name, :age

    def initialize(passenger_data)
        @passenger_data = passenger_data
        @name = passenger_data["name"]
        @age = passenger_data["age"]
    end

    def adult?
        return false unless @age >= 18
        true
    end
end