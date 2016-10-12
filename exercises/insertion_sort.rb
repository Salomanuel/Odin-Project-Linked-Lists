=begin
Call insert to insert the element that starts 
	at index 1 into the sorted subarray in index 0.
Call insert to insert the element that starts 
	at index 2 into the sorted subarray 
	in indices 0 through 1.
Call insert to insert the element that starts 
	at index 3 into the sorted subarray 
	in indices 0 through 2.
…
Finally, call insert to insert the element that 
	starts at index n−1n-1n−1 into the sorted subarray 
	in indices 0 through n−2n-2n−2.
=end

def rando(qty,range=100)
	list = []
	range = qty if range <= qty
	while list.length < qty
		list << rand(range) 
		list.uniq!
	end
	return list
end

def insert(array, rightIndex, value)
	while value <= array[rightIndex] and rightIndex >= 0
		# puts "#{value < array[rightIndex]} #{value} < #{array[rightIndex]} index = #{rightIndex}"
		temp                = array[rightIndex]
		array[rightIndex]   = value
		array[rightIndex+1] = temp
		rightIndex 				 -= 1
	end
	return array
end

def insertion_sort(array)
	(array.length-1).times do |i|
		insert(array, i, array[i+1]).join(", ")
	end
	return array
end


ary =  [22, 11, 99, 88, 9, 7, 42]

# puts insert(ary, 0,ary[1]).join(", ")
# puts insertion_sort(ary).join(", ")
puts insertion_sort(rando(1000)).join(", ")
# puts insertion_sort([2,5,3,4,7,2,5]).join(", ")