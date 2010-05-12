#problem 9
#implementation of the Sieve of Atkin jay

limit = 2000000
sum = 0
arr = Array.new(limit)
arr.fill(false)
count = 1
total = 0
for x in 1..(Math.sqrt(limit).to_i) do
	for y in 1..(Math.sqrt(limit).to_i) do
		n = 4*(x*x) + (y*y)
		if (n <= limit) and (n % 12 == 1 || n % 12 == 5)
			arr[n] =  !arr[n]
		end
		n = 3*(x*x) + (y*y)
		if (n <= limit) and (n % 12 == 7)
			arr[n] = !arr[n]
		end
		n = 3*(x*x) - (y*y)
		if (x > y)  and (n <= limit) and (n % 12 == 11)
			arr[n] = !arr[n]
		end
	end
end

for n in 5..(Math.sqrt(limit).to_i) do
	if arr[n]
		while total < limit
			total = count * (n*n)
			arr[total] = false
			count += 1
		end
		total,count = 0,1
	end
end
puts 2
puts 3
for n in  5..limit do
	if arr[n]
		puts n.to_s
		sum = sum + n
	end
end
puts (sum + 2 + 3).to_s