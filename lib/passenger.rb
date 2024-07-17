class Passenger
    attr_reader :name, :age

    def initialize(hash_data)
        @name = hash_data["name"]
        @age = hash_data["age"]
    end
end