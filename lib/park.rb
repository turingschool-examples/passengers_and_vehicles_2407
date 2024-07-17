class Park
    
    attr_reader :name, :admission

    def initialize(park_info)
        @name = park_info[:name]
        @admission = park_info[:price]
    end

end