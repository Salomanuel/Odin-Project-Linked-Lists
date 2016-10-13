=begin
Move disk 1 from peg A to peg C; 
move disk 2 from peg A to peg B; 
move disk 1 from peg C to peg B
=end

def start
	peg_gen(2)
	game
end

def peg_gen(size)
	@pegA = []
	@pegB = []
	@pegC = []
	
	size.times do |i|
		@pegA << i+1
		@pegB << 0
		@pegC << 0
	end

	return graphics(@pegA,@pegB,@pegC)
end

def graphics(pegA, pegB, pegC)
	pegs = [pegA,pegB,pegC]
	pegs.each do |peg| 
		peg.each_index do |i|
			if peg[i] == 0
				puts "O" 
			else
				puts "X" * peg[i]
			end
		end
		puts "\n" 
	end
end

def turn
	turn ||= 0
	puts "\n turn \##{turn} \n"
	turn +=1
end

def game
	turn
	if @pegA[0] == 1 and @pegA[1] == 2
		@pegC[-1] = 1		# move 
		@pegA[0] = 0
	end
	graphics(@pegA,@pegB,@pegC)
end

start

