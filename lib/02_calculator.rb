def add(numa, numb)
	return numa + numb
end

def subtract(numa, numb)
	return numa - numb
end

def sum(arr)
		return arr.sum
end

def multiply(numa, numb)
	return (numa * numb).round(2) #Arrondi à 2 chiffres après la virgule (pour que des tests comme 3*1.3 donne bien 3.9 et non pas 3.9000000004 ce qui fait foirer l'assertion)
end

def power(number, power)
	return number**power
end

def factorial(num)
	(1..num).reduce(1, :*) #Le 1 pour au moins partir d'1 (ne jamais avoir 0 puisque 0! et 2! = 0)
end