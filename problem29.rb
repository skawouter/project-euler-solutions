#problem 29
arr = []
for j in 2..100
	for i in 2..100
		a = j**i
		arr << a unless arr.include?(a)
	end
end
puts arr.join(', ')
puts arr.size