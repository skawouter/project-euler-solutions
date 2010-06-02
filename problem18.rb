@v = []
@v << "75 00 00 00 00 00 00 00 00 00 00 00 00 00 00".split
@v << "95 64 00 00 00 00 00 00 00 00 00 00 00 00 00".split
@v << "17 47 82 00 00 00 00 00 00 00 00 00 00 00 00".split
@v << "18 35 87 10 00 00 00 00 00 00 00 00 00 00 00".split
@v << "20 04 82 47 65 00 00 00 00 00 00 00 00 00 00".split
@v << "19 01 23 75 03 34 00 00 00 00 00 00 00 00 00".split
@v << "88 02 77 73 07 63 67 00 00 00 00 00 00 00 00".split
@v << "99 65 04 28 06 16 70 92 00 00 00 00 00 00 00".split
@v << "41 41 26 56 83 40 80 70 33 00 00 00 00 00 00".split
@v << "41 48 72 33 47 32 37 16 94 29 00 00 00 00 00".split
@v << "53 71 44 65 25 43 91 52 97 51 14 00 00 00 00".split
@v << "70 11 33 28 77 73 17 78 39 68 17 57 00 00 00".split
@v << "91 71 52 38 17 14 91 43 58 50 27 29 48 00 00".split
@v << "63 66 04 68 89 53 67 30 73 16 69 87 40 31 00".split
@v << "04 62 98 27 23 09 70 98 73 93 38 53 60 04 23".split

row = 0
col = 0
def docalc(row,col,doright)	
	#puts "#{row},#{col}"
	if row < 14 and col < 14			
		if doright
	#		puts "docalc(#{row+1},#{col},false) and docalc(#{row+1},#{col+1},true)"
			return @v[row+1][col].to_i + @v[row+1][col+1].to_i + docalc(row+1,col,false) + docalc(row+1,col+1,true)
		else
	#		puts "docalc(#{row+1},#{col},false)"
			return @v[row+1][col].to_i  + docalc(row+1,col,false) 
		end
	else 
		return 0
	end
end
 #docalc(0,0,true)
 
sum = 0
while row <13
	sum += @v[row][col].to_i

	puts "#{row},#{col}"
	puts @v[row][col].to_s
	if docalc(row+1,col,true) > docalc(row+1,col+1,true)
		row +=1 
	elsif docalc(row+1,col,true) < docalc(row+1,col+1,true)
		row +=1
		col +=1
	else 
		row +=1
	end
end
	puts "#{row},#{col}"
	puts @v[row][col].to_s
if row+1 == 14 or col+1 == 14
	if @v[row+1][col] > @v[row+1][col+1]
		puts "#{row+1},#{col}"
		puts @v[row+1][col].to_s
		sum+= @v[row+1][col].to_i
	else
		puts "#{row+1},#{col+1}"
		puts @v[row+1][col+1].to_s
		sum += @v[row+1][col+1].to_i
	end
end
	
 puts (sum + @v[row][col].to_i).to_s
