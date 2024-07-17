class Passenger

  attr_reader :name, :age

  def initialize(data)
    data.default = "n/a"
    @name = data[:name]
    @age = data[:age]


  end

end