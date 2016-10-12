def graphics(peg1=[1,2,3,4,5], peg2=[0,0,0,0,0], peg3=[0,0,0,0,0])
	pegs = [peg1,peg2,peg3]


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

def game
	# if peg1.contains
end

graphics