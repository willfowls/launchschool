# Write method that takes floating point number representing angle between 0 and 360
# Return a string that represents angle in degrees, minutes, and seconds
# Use degree symbol to represent degrees, ' to represent minutes, and " to represent seconds
# Degree = 60 mins, min = 60 seconds

DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

def degrees(degr)
  total_seconds = (degr * SECONDS_PER_DEGREE).round
  deg, remaining = total_seconds.divmod(SECONDS_PER_DEGREE)
  mins, secs = remaining.divmod(SECOND_PER_MINUTE)
  format(%(#{degrees}#{DEGREE}%02d'%02d"), mins, secs
end
