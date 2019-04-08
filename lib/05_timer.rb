def time_string(time)
  hours = 0
  minutes = 0
  seconds = 0
  hours = time / 3600
  time -= hours * 3600

  minutes = time / 60
  time -= minutes * 60
  
  seconds = time

  hours = hours.to_s
  if hours.size == 1
    hours = "0"+hours
  end
  minutes = minutes.to_s
  if minutes.size == 1
    minutes = "0"+minutes
  end
  seconds = seconds.to_s
  if seconds.size == 1
    seconds = "0" + seconds
  end

  return "#{hours}:#{minutes}:#{seconds}"
end