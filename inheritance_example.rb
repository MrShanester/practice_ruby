class Vehicle
  def initialize
    @speed = 0
    @direction = "north"
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car < Vehicle
  def initialize
    super
    @fuel = "Gas"
    @make = "GMC"
    @model = "Sierra"
    @year = "1998"
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  def initialize
    super
    @type = "Bodfish"
    @weight = 14
    @tire = "Road Tread"
  end

  def ring_bell
    puts "Ring ring!"
  end
end

bike = Bike.new

car = Car.new

bike.accelerate

car.accelerate

bike.ring_bell

car.honk_horn
