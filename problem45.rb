def isPentagonal(number)
		test = (Math.sqrt((24*number)+1)+1)/6
		return test == test.to_i 
end
def isHexagonal(number)
	test = (Math.sqrt((8*number)+1)+1)/4
	return test == test.to_i
end

def isTriangle(number)
	test = (Math.sqrt(8*number+1)-1)/2
	return test == test.to_i
end
puts isPentagonal(40755)
puts isTriangle(40755)
puts isHexagonal(40755)
1000000000000.times do |a|
	a = 1 if a == 0
	if isTriangle(a) and isHexagonal(a) and isPentagonal(a)
		puts a.to_s
	end
	if a % 1000000 == 0
		puts " at " + a.to_s + Time.new.to_s
	end
end

