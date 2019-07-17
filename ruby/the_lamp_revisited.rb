#It will have a string attribute for color and boolean attribute, on, that will refer to whether the lamp is on or not.

#Define your class constructor with a parameter for color and assign on as false on initialize.

# Give the lamp an instance method called toggle_switch that will switch the value of the on attribute.

# Define another instance method called state that will return "The lamp is on." if it's on and "The lamp is off." otherwise.

class Lamp
  def initialize(color)
    @color = color
    @on = false
  end

  def state
    "The lamp is #{ @on ? true : false }"
  end

  def color
    @color
  end

  def toggle_switch
    @on = !@on
  end
end

a = Lamp.new("blue")

p a

puts a.color
puts a.state
