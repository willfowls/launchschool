# Time of day represents number of mins before or after midnight
# If number is positive, time is after midnight
# If number is negative, time is before midnight
#  Write method that uses this minute based format
# Return time of day in 24 hr format
# No using date and time classes in ruby

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def time_of_day(delta_minutes)
  delta_minutes =  delta_minutes % MINUTES_PER_DAY
  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
  format('%02d:%02d', hours, minutes)
end