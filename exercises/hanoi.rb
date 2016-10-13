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
	sleep(0.5)
	@turn ||= 0
	puts "\n turn \##{@turn} \n"
	@turn +=1
	# puts "turn changed to #{turn}"
end

def game
	
		if 		@pegA[0] == 1
			@pegC[-1] = 1		# move disk 1 from A to C
			@pegA[0] = 0
		elsif @pegA[1] == 2 and @pegA[0] == 0
			@pegB[-1] = 2		# move disk 2 from peg A to peg B; 
			@pegA[1] = 0
		elsif @pegC[1] == 1 and @pegB[1] == 2
			@pegB[0] = 1
			@pegC[1] = 0			
		else
			puts "done!"
			return
		end
	turn
	graphics(@pegA,@pegB,@pegC)
	game
end

start

