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

    def get_list(list)
        if list == 'Children'
            @children
        elsif list == 'Adults'
            @adults
        else
            @patrons
        end
    end

    def sort_list(list)
        sort_list = get_list(list) 
        sort_list.sort do |name_1, name_2|
            name_1.capitalize()
            name_2.capitalize()
            name_1 <=> name_2
        end
    end
end