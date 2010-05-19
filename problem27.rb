#problem 27
@arr = []
@arr.concat([0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38, 40, 42, 44, 46, 48, 50, 52, 54, 56, 58]) #remainders of 2
@arr.concat([3, 9, 15, 21, 27, 33, 39, 45, 51, 57]) #remainders of 3
@arr.concat([5, 25, 35, 55]) #remainders of 5
def isrealprime(number)
	count = number-2
	while count > 1
		if number % count == 0 
			return false
		end
		count -= 2
	end
	return true
end
def isprime(number)
	if @arr.index(number % 60).nil?
		return isrealprime(number)
	end
end
num = 0
count = 0
max = 0
maxj = 0
maxs = 0
for j in (-999..999) do 
	for s in (-999..999) do 
		num = j
		while isprime(num)
			count += 1
			num = (count*count) + (j*count) + s
			puts num.to_s + ":" +  count.to_s if j == -997 and s == -937
		end
		if count > max
			puts "found " + count.to_s + "² + " + j.to_s + "x" + count.to_s + " + " + s.to_s
			max = count 
			maxj = j
			maxs = s
		end
		count = 0
	end
end
puts max 
puts maxj
puts maxs