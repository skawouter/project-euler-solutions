#problem 17
@@total = ""
def translate(j)
	returnvalue = ""
	hundred = "hundred"
	zero = "zero"
	one = "one"
	two = "two"
	three = "three"
	four = "four"
	five = "five"
	six = "six" 
	seven = "seven"
	eight = "eight"
	nine = "nine"
	ten = "ten"
	eleven = "eleven"
	twelve = "twelve"
	thirteen = "thirteen"
	fourteen = "fourteen"
	fifteen = "fifteen"
	sixteen = "sixteen"
	seventeen = "seventeen"
	eighteen = "eighteen"
	nineteen = "nineteen"
	twenty = "twenty"
	thirty = "thirty"
	forty = "forty"
	fifty = "fifty"
	sixty = "sixty"
	seventy = "seventy"
	eighty = "eighty"
	ninety = "ninety"
	farr = ["",one,two,three,four,five,six,seven,eight,nine,ten,eleven,twelve,thirteen,fourteen,fifteen,sixteen,seventeen,eighteen,nineteen,twenty]
	varr = [twenty,thirty,forty,fifty,sixty,seventy,eighty,ninety]
	if j.to_i < 21
		returnvalue += farr[j].to_s
	else
		if j < 100
			tel = j / 10
			returnvalue +=  varr[tel-2].to_s
			tel = j.to_s[1..2].to_i
			returnvalue +=   translate(tel).to_s
		else	
			tel = j /100
			returnvalue +=   translate(tel).to_s
			returnvalue +=   hundred.to_s
			returnvalue +=   "and" unless j.to_s[1..3].to_i == 0
			tel = j.to_s[1..3].to_i
			returnvalue +=   translate(tel).to_s
		end
	end
	return returnvalue
end
teller = 0
for j in 1..999
	puts j.to_s
	 teller += translate(j).size
	 puts translate(j)
end
puts teller.to_s
puts translate(342).to_s
puts translate(342).to_s.size
puts translate(115).to_s
puts translate(115).to_s.size