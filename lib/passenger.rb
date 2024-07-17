class Passenger

    attr_reader :passenger_info,
                :name,
                :age,
                :adult,
                :driver,
                :drive

    def initialize(passenger_info, driver = false) 
        @name = passenger_info[:name.to_s]
        @age = passenger_info[:age.to_s]
        @driver = driver
    end

    def adult?
        if @age < 18
            false
        else
            true
        end
    end

    def driver?
        @driver
    end
    
    def drive
        @driver = true
        if @age < 18
            @driver = false
        end
    end

end