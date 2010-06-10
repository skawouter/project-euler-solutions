#problem 50
def isprime(number)
	return false if number % 2 == 0
	testnum = 3
	limit = number
	while limit > testnum
		if number % testnum == 0
			return false
		end
		limt = number / testnum
		testnum += 2
	end
	return true
end
arr = []
arr.concat([0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38, 40, 42, 44, 46, 48, 50, 52, 54, 56, 58]) #remainders of 2
arr.concat([3, 9, 15, 21, 27, 33, 39, 45, 51, 57]) #remainders of 3
arr.concat([5, 25, 35, 55]) #remainders of 5
sum = 2
count = 1
while sum < 1000
	count += 1
	if arr.index(count % 60).nil? or count < 10
		if isprime(count)
			puts "found " + count.to_s
			sum += count
			puts "notsum " + sum.to_s
			if arr.index(sum % 60).nil? or sum < 10
				if isprime(sum)
					puts "sum = " + sum.to_s 
				end
			end
		end
	end
end
