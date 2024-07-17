class Passenger

    attr_reader :name, :age

    def initialize(info)
        # require 'pry'; binding.pry
        @name = info["name"]
        @age = info["age"]
    end

    def adult?
        if @age >= 18
            true
        else
            false
        end
    end
end