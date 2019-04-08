def who_is_bigger(a,b,c)
  largest = a
  str = "a "
	if a == nil || b == nil || c == nil
		return "nil detected"
	else
    if(b>largest)
      str = "b "
    end
    if(c>largest)
      str = "c "
    end
	end
  return str + "is bigger"
end

def reverse_upcase_noLTA(str)
  return str.reverse!.upcase.delete!('LTA')
end

def array_42(arr)
  return arr.any?(42)
end

def magic_array(arr)
  arr.flatten!
  # print arr.class, " ", arr, "\n"
  arr.sort!
  # print arr.class, " ", arr, "\n"
  arr.map! {|n| n * 2}
  # print arr.class, " ", arr, "\n"
  arr.delete_if{|n| n%3==0}
  # print arr.class, " ", arr, "\n"
  arr.uniq!
  # print arr.class, " ", arr, "\n"
  arr.sort!
  # print arr.class, " ", arr, "\n"
  return arr
end

def perform
  magic_array([11,2,9,2,10,4,5,6])
end
perform