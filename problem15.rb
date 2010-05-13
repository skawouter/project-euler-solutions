#problem 15
# with some help from http://www.joaoff.com/2008/01/20/a-square-grid-path-problem/
def factorize(num)
	if num == 1 
		return num
	end
	return num * factorize(num-1) 
end
first = factorize(40)
second = factorize(20) * factorize(20)
third = first.to_f / second.to_f
puts first
puts second
puts third

