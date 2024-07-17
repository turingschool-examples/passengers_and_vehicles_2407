class Passenger

  attr_reader :name, :age, :driver

  def initialize(data)
    data.default = "n/a"
    @name = data["name"]
    @age = data["age"]
    @driver = false
  end

  def adult?
    if @age >= 18
      return true
    else
      false
    end
  end

  def drive
    @driver = true
  end

end