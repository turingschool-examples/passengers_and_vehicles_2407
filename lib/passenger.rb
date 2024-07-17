class Passenger
    attr_reader :name, :age

    def initialize(hash_data)
        @name = hash_data["name"]
        @age = hash_data["age"]
        @adult = check_age
        @driver = false
    end

    def check_age
        if @age >= 18
            true
        else
            false
        end
    end

    def adult?
        @adult
    end

    def driver?
        @driver
    end

    def drive
        @driver = true
    end
end