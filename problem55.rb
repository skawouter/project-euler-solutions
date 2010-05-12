def islychel(num,count)
	return true if count > 51 
	newnum = num + num.to_s.reverse.to_i
	if newnum.to_s == newnum.to_s.reverse
		return false
	end
	return islychel(newnum,count+1)
end
count = 0
1.upto(10000) do |n|
	if islychel(n,0)
		puts n 
		count += 1
	end
end
puts count.to_s