module VehicleTraits
  attr_accessor :speed, :direction

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

class Car
  include VehicleTraits

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike
  include VehicleTraits

  def ring_bell
    puts "Ring ring!"
  end
end

bike = Bike.new
car = Car.new

puts car.speed
car.honk_horn

bike.direction = "West"

puts bike.direction
bike.ring_bell
