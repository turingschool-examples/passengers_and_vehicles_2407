class Passenger

    attr_reader :name, :age

    def initialize(person)
        @name = person["name"]
        @age = person["age"]
    end


    def adult?
        if @age > 17
            true
        else
            false
        end
        
    end



end