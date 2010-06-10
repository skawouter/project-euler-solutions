#problem 38
f = 100000000
def contains(number)
	for j in 1..9 do
		if !number.to_s.include?(j.to_s)
			return false
		end
	end
	return true
end
def trying(number)
	concat = number.to_s
	count = 2
	until concat.size > 9
		concat = concat + (number*count).to_s
		count += 1
		if concat.size == 9
			if contains(concat)
				return concat
			end
		end
	end
	return false	
end
max = 0
for j in 1..40000
	s = trying(j)
	if s
		puts "found " + s + " while trying " + j.to_s
		if s.to_i > max
			max = s.to_i
			puts "new max = " + max.to_s
		end
	end
end