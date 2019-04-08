def echo(str)
  return str
end

def shout(str)
  return str.upcase
end

def repeat(str, nb=2)
  str = ((str + " ") * nb)
  return str[0, str.size-1]
end

def start_of_word(str, nb)
  return str[0,nb]
end

def first_word(str)
  return str.split(" ")[0]
end

def titleize(str)
  str = str.split(" ")
  forbidden = ["and", "or", "in", "the", "a", "if", "off", "of", "ok", "pd", "lol"]
  str.map! {|n| if 
    !forbidden.index(n)
      n.capitalize
    else
      n
    end
  }
  str[0] = str[0].capitalize
  return str.join(" ")
end

def perform
end
perform