#problem 44
def getpentagonal(number)
	currnum = number.to_f
	return (currnum/2) * ((3*currnum -1))
end
def isinarray(number)
	begin
		test = (Math.sqrt((24*number)+1)+1)/6
		return test == test.to_i 
	rescue
		puts "ERROR with number " + number.to_s
	end
end
10.times do |n|
  n+=1
  puts getpentagonal(n).to_s
  
end




number = 3000
arr = Array.new(number*number)
(number*number).times do |n|
	arr[n] = getpentagonal(n+1) 	
end
@@abc = arr
puts "filled it"

number.times do |n|
	n = 1 if n == 0
	number.times do |v|
		v = 1 if v == 0
		v += 1 if arr[n] == arr[v]
		#puts "doing " + arr[n].to_s + ", " + arr[v].to_s
		#puts "which is " + n.to_s + " and " + v.to_s
		if arr[n] > arr[v]
			if isinarray(arr[n] + arr[v])
				#puts "the sum of " + arr[n].to_s + ", " + arr[v].to_s + " is a pentagonal"
				if isinarray(arr[n] - arr[v])
					puts arr[n].to_s + ", " +arr[v].to_s
					puts n.to_s + ", " + v.to_s
				end unless (arr[n] - arr[v]) < 0
			end
		end
	end
end