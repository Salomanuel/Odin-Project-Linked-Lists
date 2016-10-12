=begin
Selection sort loops over positions in the array. 
For each position, it finds the index of the 
minimum value in the subarray starting at that 
position. Then it swaps the values at the position 
and at the minimum index. 
Write selection sort, making use of the swap and 
indexOfMinimum functions. 
=end

def rando(qty, range=100)
	list = []
	qty.times { list << rand(range) }
	return list.uniq
end

def index_of_minimum(value, array)
	min = array[value]
	pos = value
	array[value..-1].each do |j|
		if j <= min
			min = j
			pos = array.index(j)
		end
	end
	return pos
end

def swappa(array, firstIndex, secondIndex)
	# puts "SWAPPATION"
	temp               = array[firstIndex]
	array[firstIndex]  = array[secondIndex]
	array[secondIndex] = temp
	return array
end


def swappaSort(array)
	array.length.times do |j|
		min = index_of_minimum(j, array)
		swappa(array, j, min) if array[min] <= array[j]
	end
	return array.join(", ")
end

ary = [22, 11, 99, 88, 9, 7, 42]

# puts index_of_minimum(1,ary)
# puts index_of_minimum(2,ary)
# 0.upto(ary.length-1) { |i| puts "starting from pos \##{i} is: #{ary[index_of_minimum(i, ary)]}" }

# puts swappa([7,9,4], 0, 1).join(", ")
# puts swappa(ary, 0,1).join(", ")
# puts swappa(ary,22,7).join(", ")

# puts swappaSort([22, 11, 99, 88, 9, 7, 42])
puts swappaSort(rando(200))
# puts swappaSort([3, 3, 89, 64, 23, 23, 43, 33, 9, 16, 22, 27, 28, 31, 35, 36, 51, 71, 84, 85, 96])