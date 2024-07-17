class Park
    attr_reader :name, 
                :adult_admission,
                :child_admission, 
                :collected_admissions,
                :vehicles,
                :passengers,
                :patrons,
                :adults,
                :children

    def initialize(hash_data)
        @name = hash_data[:name]
        @adult_admission = hash_data[:adult_admission]
        @child_admission = hash_data[:child_admission]
        @collected_admissions = 0
        @vehicles = []
        @passengers = []
        @patrons = []
        @adults = []
        @children = []
    end

    def vehicle_pass(vehicle)
        @vehicles << vehicle
        add_passengers(vehicle)
    end

    def add_passengers(vehicle)
        vehicle.passengers.each do |passenger|
            charge_admission(passenger)
            @patrons << passenger.name
            @passengers << passenger
        end
    end

    def charge_admission(passenger)
        if passenger.adult?
            @adults << passenger.name
            @collected_admissions += @adult_admission
        else
            @children << passenger.name
            @collected_admissions += @child_admission
        end
    end

    def print_list(list)
        if list == 'Children'
            p @children
        elsif list == 'Adults'
            p @adults
        else
            p @patrons
        end
    end
end