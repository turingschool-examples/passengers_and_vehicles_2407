class Passenger
  attr_reader :name, :age

  def initialize(something)
    @name = name
    @age = age

  end

  def adult?
   if @adult >= 18
    true
   else
    false
   end
  end

   def drive
    @charlie
   end

  def driver?
    if @adult == true
      true
    else false
    end
  end
end