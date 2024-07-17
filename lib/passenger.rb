class Passenger
    attr_reader :name
                :age
                :adult

    def initialize(name, age, adult)
        @name = name
        @age = age
        @adult = adult
    end

    def adult?
        if
            @age >= 18
            true
        else
            false
    end
end