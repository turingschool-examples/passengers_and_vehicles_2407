class Passenger

    attr_reader :passenger_info,
                :name,
                :age,
                :adult,
                :driver

    def initialize(passenger_info) 
        @name = passenger_info[:name.to_s]
        @age = passenger_info[:age.to_s]
    end

    def adult?
        if @age < 18
            false
        else
            true
        end
    end
    def driver?
        false
    end
    # def drive
    #     @driver? = true
    # end

end