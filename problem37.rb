# problem 37
def isprime?(i)
	return false if i == 1
	return true if i == 2
	arr = []
	arr.concat([0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38, 40, 42, 44, 46, 48, 50, 52, 54, 56, 58]) #remainders of 2
	arr.concat([3, 9, 15, 21, 27, 33, 39, 45, 51, 57]) #remainders of 3
	arr.concat([5, 25, 35, 55]) #remainders of 5
	if i < 10
		return isprime(i)
	end
	if arr.index(i % 60).nil?
		return isprime(i) 
	end
	return false
end
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
def calc(input,takeright)
	tocalc = input
	while isprime?(tocalc)
		if tocalc.to_s.size == 1 
			return true
		end
		if takeright
			tocalc = tocalc.to_s[0,tocalc.to_s.size-1].to_i
		else
			tocalc = tocalc.to_s[1,tocalc.to_s.size].to_i
		end
	end
	return false
end	
number = 11
count = 0
sum = 0
while count < 10
	number += 2
	puts "TRY: " + number.to_s if number % 1001 == 0 
	if calc(number,true) and calc(number,false)
			puts number.to_s 
			sum += number
			count += 1
	end unless number.to_s[1,2] == "1" or number.to_s[-2,-1] == "1"
end
puts (number + 		739397).to_s
