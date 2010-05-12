a = 1
b = 2
c = 2
puts a
puts b
while b <= 4000000
	temp = a + b
	a = b
	b = temp
	puts b
	if b % 2 == 0
		c += b
	end
end
puts "solution :" + c.to_s