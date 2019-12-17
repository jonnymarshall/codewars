require 'byebug'

def rgb(r, g, b, hex_conversion = [])
  hex = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "A", "B", "C", "D", "E", "F"]
  # byebug
  value_converter(r, hex_conversion, hex)
  value_converter(g, hex_conversion, hex)
  value_converter(b, hex_conversion, hex)
  hex_conversion.join
end

def value_converter(value, hex_conversion, hex)
  value = 0 if value < 0
  value = 255 if value > 255
  val_div_sixteen = value / 16.to_f
  val_rem_sixteen = value % 16
  hex_conversion << hex[val_div_sixteen]
  hex_conversion << hex[val_rem_sixteen]
end

p rgb(173, 255, 47)
# ADFF2F
