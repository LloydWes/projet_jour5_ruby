def translate(string_that_makes_me_wanna_kill_myself)
  stmmwkm = string_that_makes_me_wanna_kill_myself
  stmmwkm = stmmwkm.split #On sépare la chaine en tableau 
  sequence = nil
  stmmwkm.map!{|word|
    word.match(/(^[b-df-hj-np-tv-z]*qu|^sch|^[b-df-hj-np-tv-z]*[^aeiouy])?/i){ #On selectionne les consonnes qui précèdent 'qu' en début de chaineet ce jusqu'à la première voyelle
      # ou on sélectionne sch en début de chaine et ce jusqu'à la première voyelle
      # ou on sélectionne tout les consonnes en début de chaine et ce jusqu'à la première voyelle
      # on capture le tout avec des paranthèses
    |sequence|
    if sequence != nil && sequence.captures[0] != "" #Si la capture n'échoue pas
      #On extrait la zone capturé pour la placer à la fin avec les caractères "ay"
      word[sequence.captures[0].to_s.length..word.length-1] << "" << sequence.captures[0].to_s << "ay"
    else
      puts "Rien n'a été trouvé"
    end
}
  }
  return stmmwkm.join(" ")
end

#Fait pas gaffe aux commentaires stp


# puts attempt("apple")
# puts attempt("banana")
# puts attempt("eat pie")
# puts attempt("school")
# puts attempt("quiet")
# puts attempt("three")

# ^((?:.{1,}sch|.{1,}).{1,}[^aeiuoy]).{1,}$
#^([^aeiouy:alpha:]*(?:qu|sch)|[^aeiouy:alphanum:]*[^aeiouy])[aeiouy]+
# ^([^aeiouy[:alpha:]]*(?:qu|sch)|[^aeiouy:alphanum:]*[^aeiouy])[aeiouy]+
# ^([^aeiouy[:alpha:]]*(?:qu|sch)|[[:alpha:]^aeiouy]*[^aeiouy])[aeiouy]+

#[b-df-hj-np-tv-z]

#^((?:[b-df-hj-np-tv-z]*qu|^sch)|[b-df-hj-np-tv-z]*[^aeiouy])[aeiouy]?


=begin
def vowel_pos(search_str)
  return search_str.index(/[aeiuoy]/) || nil
end

def qu_pos(search_str)
  return search_str.index(/qu/) || nil
end

def sch_pos(search_str)
  return search_str.index(/sch/) || nil
end

def extract_from(extract_str, begin_pos=0, end_pos=1)#end excluded
  return extract_str[begin_pos...end_pos]
end

def translate(string_that_makes_me_wanna_kill_myself)
  stmmwkm = string_that_makes_me_wanna_kill_myself
  vowels = ["a", "e", "i", "o", "u", "y"]
  stmmwkm = stmmwkm.split
  first_vowel_pos = nil
  pos = nil
  char = nil
  stmmwkm.map!{|word|
    if sch_pos(word) != nil
      word = word[3..word.size-1]
      word << "schay"
    elsif (pos = qu_pos(word)) != nil
      puts pos.class
      char = extract_str(word, 0, pos + 2)
      word = word[pos+2..word.size-1]
      word << char << "ay"
    #elsif vowels.index(word[0])
    elsif (pos = vowel_pos(word)) == 0
      word << "ay"
    else
    #elsif !vowels.index(word[0])
      first_vowel_pos = vowel_pos(word)
      char = word[0..first_vowel_pos-1]
      word[first_vowel_pos..word.length-1] << char << "ay"

      # if vowels.index(word[1])
      #   word.reverse << "ay"
      # elsif !vowels.index(index[2])
      #   char = word[0,1]
      #   word.slice![0..1]
      #   word << char << "ay"
      # end

    end
  }
  return stmmwkm.join(" ")
end
=end
