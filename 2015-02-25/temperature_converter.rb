#!/usr/bin/env ruby

class TemperatureConverter
  def initialize(temperature_in_f)
    @temperature = temperature_in_f
  end

  def to_celsius
    (@temperature - 32) * 5/9
  end

  def to_s
    @temperature.to_s
  end
end

temperature_1 = TemperatureConverter.new(68)

puts "#{temperature_1} F is #{temperature_1.to_celsius} C"
# 68 F is 20 C

