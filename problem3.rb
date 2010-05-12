
#problem 3
def isprime(num)
	(num-1).downto(3) do |n|
		if num % n == 0
			return false
		end
	end
	return true
end


number = 600851475143

for i in 2..(Math.sqrt(number)+0.5) do 
	tmp = 0.0
	tmp = number/i.to_f
	if tmp == tmp.to_i
		puts tmp.to_i.to_s
	end
end

