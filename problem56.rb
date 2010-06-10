#problem 56
def makesum(number)
	sum = 0
	number.to_s.each_char do |k|
		sum += k.to_i
	end
	return sum
end
max = 0 
for j in 1..100 do 
	for x in 1..100 do
		s = makesum(x**j)
		max = s if s > max 
	end
end
puts max.to_s