def getfactors(number)
	count = 0
	1.upto(Math.sqrt(number)) do |n| 
		if number % n == 0
			count += 2
		end
	end
	return count
end
def generatetriangle(number)
	total = 0
	1.upto(number) do |n|
		total+=n
	end
	return total
end

notfound = true
teller = 2999
temp = generatetriangle(teller)
max = 0
while notfound
	teller += 1
	temp = temp + teller
	factnum = getfactors(temp)
	if factnum > max
		max = factnum 
		puts max.to_s
	end
	puts "now at " + teller.to_s if teller % 100 == 0
	if factnum >= 500
		puts "het is " + temp.to_s
		notfound = false
	end
end
