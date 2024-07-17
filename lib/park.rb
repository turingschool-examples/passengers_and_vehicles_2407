class Park
    attr_reader :name, 
                :adult_admission,
                :child_admission, 
                :collected_admissions,
                :vehicles,
                :passengers

    def initialize(hash_data)
        @name = hash_data[:name]
        @adult_admission = hash_data[:adult_admission]
        @child_admission = hash_data[:child_admission]
        @collected_admissions = 0
        @vehicles = []
        @passengers = []
    end

    def vehicle_pass(vehicle)
        @vehicles << vehicle
        add_passengers(vehicle)
    end

    def add_passengers(vehicle)
        vehicle.passengers.each do |passenger|
            charge_admission(passenger)
            @passengers << passenger
        end
    end

    def charge_admission(passenger)
        if passenger.age >= 18
            @collected_admissions += @adult_admission
        else
            @collected_admissions += @child_admission
        end
    end
end