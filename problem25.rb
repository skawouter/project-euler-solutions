previous = 1
now = 1
count = 2
while now.to_s.size < 1000
	count += 1
	temp = now
	now = previous + now
	previous = temp
end
puts count.to_s