#problem 5
def isdiv(num)
	1.upto(20) do |n|
		if num % n != 0
			return false
		end
	end
	return true
end


100000000.upto(1000000000) do |n|
	if isdiv(n)
		puts "found it " + n.to_s
	end
end