class Passenger
    attr_reader :name,
                :age

    def initialize(person_details)
        @name = person_details["name"]
        @age = person_details["age"]
    end

    def adult?
        @age >= 18
    end

    def driver?
        adult?
    end
end