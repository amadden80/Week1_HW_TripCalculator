

def forceAboveZero(value)
  while value <= 0
    print "Must be greater than zero...  Try Again: "
    value = gets.chomp.to_f
  end
  return value
end


def adjustMilesPerGallon(milesPerGallon, speed)

  if (speed - 60) > 0
    milesPerGallon -= (2 * (speed - 60))
  end

  if milesPerGallon < 0
    return 0.0
  else
    return milesPerGallon
  end

end



# Input
print "Input ~ Distance: "
distance = forceAboveZero(gets.chomp.to_f)

print "Input ~ Speed: "
speed = forceAboveZero(gets.chomp.to_f)

print "Input ~ Cost Per Gallon: "
costPerGallon = forceAboveZero(gets.chomp.to_f)

print "Input ~ Miles Per Gallon: "
milesPerGallon = forceAboveZero(gets.chomp.to_f)
milesPerGallon = adjustMilesPerGallon(milesPerGallon, speed)



# Calcuate cost and hours of the trip
cost = (costPerGallon / milesPerGallon) * distance
hours = (distance / speed)

# Output
unless cost == Float::INFINITY
  puts "Your trip will take #{hours.round(2)} hrs and cost $#{cost.round(2)}"
else
  puts "There is not enough money for this trip.  It would cost infinity dollars!"
end




