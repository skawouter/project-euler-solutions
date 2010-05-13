v = []
v << "75 00 00 00 00 00 00 00 00 00 00 00 00 00 00".split
v << "95 64 00 00 00 00 00 00 00 00 00 00 00 00 00".split
v << "17 47 82 00 00 00 00 00 00 00 00 00 00 00 00".split
v << "18 35 87 10 00 00 00 00 00 00 00 00 00 00 00".split
v << "20 04 82 47 65 00 00 00 00 00 00 00 00 00 00".split
v << "19 01 23 75 03 34 00 00 00 00 00 00 00 00 00".split
v << "88 02 77 73 07 63 67 00 00 00 00 00 00 00 00".split
v << "99 65 04 28 06 16 70 92 00 00 00 00 00 00 00".split
v << "41 41 26 56 83 40 80 70 33 00 00 00 00 00 00".split
v << "41 48 72 33 47 32 37 16 94 29 00 00 00 00 00".split
v << "53 71 44 65 25 43 91 52 97 51 14 00 00 00 00".split
v << "70 11 33 28 77 73 17 78 39 68 17 57 00 00 00".split
v << "91 71 52 38 17 14 91 43 58 50 27 29 48 00 00".split
v << "63 66 04 68 89 53 67 30 73 16 69 87 40 31 00".split
v << "04 62 98 27 23 09 70 98 73 93 38 53 60 04 23".split

row = 0
col = 0
sum = 0
while row < 13
	sum += v[row][col].to_i
	first = v[row+1][col].to_i
	firstone = v[row+2][col].to_i
	firsttwo = v[row+2][col + 1].to_i
	second = v[row +1][col+1].to_i
	secondone = v[row+2][col+1].to_i
	secondtwo = v[row+2][col + 2].to_i
	
	#if first < second
	if second + secondone > first + firstone or second + secondone > first + firsttwo
		col += 1
	end
	if second + secondtwo > first + firstone or second + secondtwo > first + firsttwo
		col += 1
	end
	row += 1
end
sum += v[row][col].to_i
puts sum.to_s