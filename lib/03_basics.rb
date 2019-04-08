def who_is_bigger (a, b, c)  #Purement le tiens :-°
  if a==nil || b==nil || c==nil
    return "nil detected"
  elsif a >= b && a >= c
      return "a is bigger"
    elsif b>= a && b >= c
      return "b is bigger"
    else
      return "c is bigger"
  end
end

def reverse_upcase_noLTA(str)
  return str.reverse!.upcase.delete!('LTA')
end

def array_42(arr)
  return arr.include?(42)
end

def magic_array(arr)
  return arr.flatten.sort.uniq.map{|n| n*2}.delete_if{|n| n%3==0}
end