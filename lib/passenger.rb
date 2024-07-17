class Passenger

    attr_reader :name, :age

    def initialize(info)
        # require 'pry'; binding.pry
        @name = info["name"]
        @age = info["age"]
        @drive = false
    end

    def adult?
        if @age >= 18
            true
        else
            false
        end
    end

    def drive
        @drive = true
    end

    def driver?
        if @drive == false
            false
        elsif @drive == true
            true
        end
    end
end