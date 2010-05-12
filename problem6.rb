#problem6
sqr = 0
sum = 0
1.upto(100) do |n|
	sqr += (n*n)
end
1.upto(100) do |v|
	sum +=v
end
sum = sum*sum
puts sqr
puts sum
puts sum - sqr