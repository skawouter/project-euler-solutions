#problem16
sum = 2**1000
total =0
sum.to_s.each_char do |c|
	total += c.to_i
end
puts total.to_s