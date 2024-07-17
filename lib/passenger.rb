class Passenger

  attr_reader :name, :age

  def initialize(data)
    data.default = "n/a"
    @name = data["name"]
    @age = data["age"]
  end

  def adult?
    if @age >= 18
      return true
    else
      false
    end
  end

end