a,b,c = 1,1,1
continue = true
while continue
	c += 1 
	if c == 1000
		b += 1
		c = 1
	elsif b == 1000
		a += 1
		b = 1
	end
	if (a*a) + (b*b) == (c*c)	
		if (a + b + c) == 1000
			puts "a = " + a.to_s + ", b = " + b.to_s + " c = " + c.to_s
			continue = false
		end
	end 
end

	