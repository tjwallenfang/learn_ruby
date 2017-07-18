#write your code here
def add(a,b)
	a+b
end

def subtract(a,b)
	a-b
end

def sum(array)
	total = 0
	array.each do |number|
		total += number
	end
	total
end

def multiply(a,b)
	a*b
end

def power(a,b)
	a**b
end

def factorial(a)
	total = 1
	if a == 0
		return total
	else
		while a > 0 do
			total = total*a
			a -= 1
		end

	end
	total
end
