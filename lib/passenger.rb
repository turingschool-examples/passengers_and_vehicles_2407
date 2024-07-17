class Passenger

    attr_reader :name, :age

    def initialize(info)
        # require 'pry'; binding.pry
        @name = info["name"]
        @age = info["age"]
    end
end