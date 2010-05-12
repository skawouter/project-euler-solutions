#problem 14

def process(number)
	if number % 2 == 0
		return number / 2
	else
		return (number * 3) + 1
	end
end

longestchain = 0
longestnumber = 0
number = 600000
current = 0
currentchain = []
longest = []
while number < 1000000
	current = number
	while current > 1
		current = process(current)
		currentchain << current		
	end
	if number % 10000 == 0
		puts "number for " + number.to_s + " is " + currentchain.size.to_s 
		puts "longest = " + longestchain.to_s
	end
	if currentchain.size > longestchain 
		longestchain = currentchain.size
		longest = currentchain
		longestnumber = number
	end
	currentchain = []
	number += 1
end
puts "longest = " + longestchain.to_s 
output = ""
longest.each do |v|
	output = output + v.to_s + ", "
end
puts output.to_s
puts "result = " + longestnumber.to_s