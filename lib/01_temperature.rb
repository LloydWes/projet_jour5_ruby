def ftoc(temp)
	return ((temp-32)/1.8).round(2)
end

def ctof(temp)
	return ((temp*1.8)+32).round(2)
end

def perform
	puts ctof(98.6)
end
#perform
