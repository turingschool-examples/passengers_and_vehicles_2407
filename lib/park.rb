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
    end
end