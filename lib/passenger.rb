class Passenger
    attr_reader :name,
                :age

    def initialize(person_details)
        @name = person_details["name"]
        @age = person_details["age"]
        @driver = false
    end

    def adult?
        @age >= 18
    end

    def drive
        @driver = adult?
    end

    def driver?
        @driver
    end
end