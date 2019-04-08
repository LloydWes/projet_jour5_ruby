def time_string(time)

  hours = time / 3600
  time -= hours * 3600

  minutes = time / 60
  time -= minutes * 60
  
  seconds = time

  hours = hours.to_s.rjust(2, "0") #rjust permet de combler une chaine de caractère si elle est trop petite et la remplir avec des 0
  minutes = minutes.to_s.rjust(2, "0")
  seconds = seconds.to_s.rjust(2, "0")

  return "#{hours}:#{minutes}:#{seconds}"
end