def add a, b
	a + b
end


def subtract b, a
	b - a
end


def sum array_to_sum

	total = 0

	if array_to_sum.empty?
		total = 0
	end

	for num in array_to_sum
		total += num
	end

	total
end

def multiply array_to_multiply
	total = 1

	if array_to_multiply.empty?
		total = 0
	end

	for num in array_to_multiply
		total *= num
	end

	total
end

def power a, b
	a**b	
end

def factorial number
	if number < 1
		1
	else
		return_number = number * factorial(number - 1)
		return return_number
	end
end