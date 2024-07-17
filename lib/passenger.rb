class Passenger
    attr_reader :name, :age

    def initialize(attributes)
        @name = attributes[:name]
        @age = attributes[:age]
    end

    def adult?
        if age == 18
            puts true
        else
            puts false
        end
    end

    require 'pry'; binding.pry
    # charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    # taylor = Passenger.new({"name" => "Taylor", "age" => 12})
end

# charlie = Passenger.new({"name" => "Charlie", "age" => 18})
# taylor = Passenger.new({"name" => "Taylor", "age" => 12})