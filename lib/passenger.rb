class Passenger
    attr_reader :name,
                :age
    
    def initialize(person_info)
        @name = person_info["name"]
        @age = person_info["age"]
        @can_drive = false
    end

    def adult?
        if @age >= 18
            @adult = true
        else
            false
        end
    end

    def driver?
        @can_drive
    end

    def drive
        @can_drive = true
    end


end