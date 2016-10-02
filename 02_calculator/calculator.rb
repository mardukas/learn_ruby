#write your code here
def add (a,b)
	a + b
end

def subtract (a,b)
	a - b
end

def sum (array)
	array.inject(0){|sum,x| sum + x}
end

def multiply (*b)
	b.inject(1) {|product, x| product * x}
end

def power (a, b)
	a ** b
end

def factorial (a)
	if a == 0
		return 1
	else
		a * factorial(a-1)
	end

end
