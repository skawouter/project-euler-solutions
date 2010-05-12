p = "0."
count = 1
while p.length < 1000001
	p = p + count.to_s
	puts "test " + p.length.to_s
	count += 1
end

puts p.to_s
puts "found it"
puts p.index(1)
puts p.index(10)
puts p.index(100)
puts p.index(1000)
puts p.index(10000)
puts p.index(100000)
puts p.index(1000000)
puts p.index(1).to_i * p.index(10).to_i * p.index(100).to_i * p.index(1000).to_i * p.index(10000).to_i * p.index(100000).to_i * p.index(1000000).to_i