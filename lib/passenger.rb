class Passenger

    attr_reader :name, :age

    def initialize(person)
        @name = person["name"]
        @age = person["age"]
        @drives = []
    end


    def adult?
        if @age > 17
            true
        else
            false
        end
        
    end

    def driver?
        if @drives == []
            false
        else
            true
        end
    end

    def drive
        @drives << true
    end
    
end