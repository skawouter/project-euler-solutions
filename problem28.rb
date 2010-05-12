#problem 28
@@howbig = 5
@@spiral = Array.new(@@howbig)
@@spiral.each do |v|
	v= Array.new(@@howbig)
	v.fill(0)
end
@@currnumber = 1
@@itter = 1

def fill_spiral(startpos)
	x,y = startpos,startpos
	setspiral(x,y)
	x+=1
	setspiral(x,y)	
	@@itter.times do 
		y+=1
		setspiral(x,y)
	end
	(@@itter+1).times do 
		x-=1
		setspiral(x,y)
	end
	(@@itter+1).times do 
		y+=1
		setspiral(x,y)
	end
	(@@itter+1).times do 
		y+=1
		setspiral(x,y)
	end
	@@itter += 2
end
def setspiral(x,y)
	printspiral
	@@spiral[x-1][y-1] = @@currnumber
	
	@@currnumber += 1
	printspiral
	raise "test"
end
def printspiral()
	output = ""
	@@howbig.times do |n|
		@@howbig.times do |v|
			puts n.to_s + ", " + v.to_s
			output = output  + @@spiral[n][v].to_s
		end
		output += "\n"
	end
	puts output.to_s
end
fill_spiral(3)
printspiral

