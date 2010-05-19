#problem 28
big = 1001
arr = []
big.times do |k|
	arr << Array.new(big)
	arr[k].fill(0)
end
x=y= (big/2)
arr[y][x]=1
value = 1
count = 1
dotime = 1
first = false
nextdo = 1 # 1= right, 2= under, 3=left,4=up
while (x < big and y < big)
	while dotime > 0
		#puts "x,y = " + x.to_s + "," + y.to_s
		#puts arr[y][x].to_s
		case nextdo
			when 1
				x+=1				
			when 2
				y+=1
			when 3
				x-=1
			when 4
				y-=1
		end
		dotime -=1
		value += 1
		arr[y][x] = value
	end
	nextdo +=1 
	nextdo = 1 if nextdo > 4 
	count += 1 if first
	first = !first
	dotime = count	
end
# arr.each do |v|
	# puts v.join(',')
# end
sum = 0
for j in (0..1000)
	for s in (0..1000)
		sum+= arr[j][s]
	end
end
for j in (0..1000)
	for s in (100..0)
		sum+= arr[j][s]
	end
end
puts sum.to_s
puts arr[0][0].to_s
puts arr[1000][1000].to_s