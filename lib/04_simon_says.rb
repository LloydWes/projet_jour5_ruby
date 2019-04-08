def echo(str)
  return str
end

def shout(str)
  return str.upcase
end

def repeat(str, times=2) #Le tiens aussi
  return ((str + " ")*times).chop 
end

def start_of_word(str, nb)
  return str[0,nb]
end

def first_word(str)
  return str.split(" ").first
end

def titleize(sentence)
  nocaps = ["and", "or", "the", "to", "the", "a", "but"]
  return sentence.split(" ").map { 
    |word| nocaps.include?(word) ? word : word.capitalize }.join(" ").sub(sentence.split.first, sentence.split.first.capitalize)
end

# def titleize(str)
#   str = str.split(" ")
#   forbidden = ["and", "or", "in", "the", "a", "if", "off", "of", "ok", "pd", "lol"]
#   str.map! {|n| if
#     !forbidden.index(n)
#       n.capitalize
#     else
#       n
#     end
#   }
#   str[0] = str[0].capitalize
#   return str.join(" ")
# end