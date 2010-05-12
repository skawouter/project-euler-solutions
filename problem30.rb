min = 2
max = 999999
sum = 0
def doit(num)
	sum = 0
	num.to_s.each_char do |c|
		sum+=c.to_i**5
	end
	return sum
end
min.upto(max) do |n|
	if n == doit(n)
		sum += n
	end
end
puts sum.to_s