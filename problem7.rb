#problem_7 bis
def isprime(number)
	count = number-2
	while count > 1
		if number % count == 0 
			return false
		end
		count -= 2
	end
	return true
end


number = 1
arr = []
count = 4
arr.concat([0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38, 40, 42, 44, 46, 48, 50, 52, 54, 56, 58]) #remainders of 2
arr.concat([3, 9, 15, 21, 27, 33, 39, 45, 51, 57]) #remainders of 3
arr.concat([5, 25, 35, 55]) #remainders of 5
while count < 10002 do 
	number += 2
	if arr.index(number % 60).nil?
		if isprime(number)
			puts "found one : " + number.to_s + " this is " + count.to_s
			count += 1
		end
	end
end