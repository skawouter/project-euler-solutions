#problem 33
def works?(up,down)
#	puts up.to_s
	if (up.to_s[0,1] != up.to_s[1,2]) and (down.to_s[0,1] != down.to_s[1,2] and up.to_s[1,2] == down.to_s[0,1])
		if (up.to_s[0,1].to_f / down.to_s[1,2].to_f) == (up.to_f / down.to_f) and (up.to_f / down.to_f) < 1
			return true
		end unless down.to_s[1].to_s == "0"
	end
	return false
end

for j in (10..100).to_a do 
	for i in (10..100).to_a do 
		if works?(j,i)
			puts "#{j}/#{i}"
		end
	end
end