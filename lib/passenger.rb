class Passenger
    attr_reader :passenger_info

    def initialize(passenger_info)
        @passenger_info = Hash.new { |hash, key| hash[key] = nil}
    end
    
end