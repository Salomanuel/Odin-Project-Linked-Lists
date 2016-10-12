def start
	peg_gen(1)
	game
end

def peg_gen(size)
	@peg1 = []
	@peg2 = []
	@peg3 = []
	
	size.times do |i|
		@peg1 << i+1
		@peg2 << 0
		@peg3 << 0
	end

	return graphics(@peg1,@peg2,@peg3)
end

def graphics(peg1, peg2, peg3)
	pegs = [peg1,peg2,peg3]
	puts peg1
	pegs.each do |peg| 
		peg.each_index do |i|
			if peg[i] == 0
				puts peg[i] = "O" 
			else
				puts peg[i] = "X" * peg[i]
			end
		end
		puts "\n" 
	end
end

def turn
	turn ||= 0
	puts "turn \##{turn}"
	turn +=1
end

def game
	turn
	if @peg1[0] == 1
		@peg2[0] == 1
		@peg1[0] == 0
	end
	graphics(@peg1,@peg2,@peg3)
end

start

