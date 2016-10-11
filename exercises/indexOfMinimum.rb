=begin
takes an array and a number startIndex, 
and returns the index of the smallest value 
that occurs with index startIndex or greater. 
If this smallest value occurs more than once 
in this range, then return the index of the 
leftmost occurrence within this range.
=end

def indexOfMinimum(array, value)
	min ||= array[value]
	pos ||= value
	array[value..-1].each do |j|
		if j <= min
			min = j
			pos = array.index(j) 			
		end
	end
	return "found #{min} at position #{pos}"
end

ary = [18, 6, 66, 44, 9, 22, 14]

puts indexOfMinimum(ary, 2)