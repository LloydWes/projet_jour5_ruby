def ftoc(temp)
	return ((temp-32)*5.0/9.0).round(2)
end

def ctof(temp)
	return ((temp*9.0/5.0)+32).round(2)
end
