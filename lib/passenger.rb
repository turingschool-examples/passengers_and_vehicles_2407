class Passenger
    attr_reader :name,
                :age

    def initialize(name, age)
        @name = name
        @age = age
    end

    def adult?
        @age >= 18
    end

    def driver?
        adult?
    end
end