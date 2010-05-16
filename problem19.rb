def num(one)
	tel = 0
	first = one.to_i/2
	for i in 1..first do
		if one % i == 0
			tel += i
		end
	end
	return tel
end
total = 0
for x in 1..10000 do
	if x == num(num(x)) and x != num(x)
		
		total += x
	end
end
puts total.to_s