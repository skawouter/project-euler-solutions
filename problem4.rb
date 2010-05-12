#problem 4
biggest = 0
100.upto(999) do |n|
	100.upto(999) do |v|
		if (n*v).to_s.length == 6
			if (n*v).to_s[0,3] == (n*v).to_s[3,6].reverse
				puts (n*v).to_s[0,3] + " and " + (n*v).to_s[3,6].reverse
				puts "found one = " + (n*v).to_s
				biggest = (n*v) if (n*v) > biggest
			end
		end
	end
end
				
puts "biggest = " + biggest.to_s			