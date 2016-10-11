=begin
Selection sort loops over positions in the array. 
For each position, it finds the index of the 
minimum value in the subarray starting at that 
position. Then it swaps the values at the position 
and at the minimum index. 
Write selection sort, making use of the swap and 
indexOfMinimum functions. 
=end
=begin
IMPLEMENT INDEX OF MINIMUM
AND SWAPPA 
AS DIFFERENT FUNCTIONS
=end
=begin
var swap = function(array, firstIndex, secondIndex) {
	var temp = array[firstIndex];
	array[firstIndex] = array[secondIndex];
	array[secondIndex] = temp;
};

var testArray = [7, 9, 4];
swap(testArray, 0, 1);

println(testArray);

Program.assertEqual(testArray, [9, 7, 4]);
=end

def index_of_minimum(value, array)
	min = array[value]
	pos = value
	array[value..-1].each do |j|
		if j <= min
			min = j
			pos = array.index(j)
		end
	end
	# return "found #{min} at position #{pos}"
	return pos
end

def swappa(array, firstIndex, secondIndex)
	temp               = array[firstIndex]
	array[firstIndex]  = array[secondIndex]
	array[secondIndex] = temp
	return array
end


def swappaSort(array)
	array.length.times do |j|
		min = index_of_minimum(j, array)
		puts array[min]
	end
	return #array.join(", ")
end

ary = [22, 11, 99, 88, 9, 7, 42]
# puts swappaSort(ary)
# puts index_of_minimum(2,ary)
# 0.upto(ary.length-1) { |i| puts "starting from pos \##{i} is: #{ary[index_of_minimum(i, ary)]}" }

puts swappa([7,9,4], 0, 1).join(", ")
# puts swappa(ary, 0,1).join(", ")
