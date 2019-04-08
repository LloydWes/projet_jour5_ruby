def add(numa, numb)
	return numa + numb
end

def subtract(numa, numb)
	return numa - numb
end

def sum(arr)
		return arr.reduce(0, :+)
end

def multiply(numa, numb)
	return (numa * numb).round(2)
end

def power(number, power)
	return number**power
end

def factorial(num)
	(1..num).reduce(1, :*)
end

def perform
	puts multiply(3,1.3)
end
#perform