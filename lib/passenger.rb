class Passenger
  attr_reader :name, :age, :adult, :drive

  def initialize(data)
    @name = data["name"]
    @age = data["age"]
    @adult = adult
    @drive = @age >= 18

  end

  def adult?
    @age >= 18
    
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