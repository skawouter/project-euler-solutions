def isprime(number)
	(number-1).downto(3) do |v|
		if number.modulo(v) == 0
			return false
		end
	end
	return true
end
output = 0
temp = []
(1..2000000).to_a.each do |num|
	puts "trying = " + num.to_s
	if isprime(num)
		puts "is prime " + num.to_s
		temp << num
		output += num
	end
end
puts temp.to_s
