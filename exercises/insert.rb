=begin
The insert function takes three parameters as inputs: 
array, rightIndex, and value.

Before the insert function is called:
* the elements from array[0] to array[rightIndex] 
  are sorted in ascending order.

After calling the insert function:
* value and the elements that were previously in 
  array[0] to array[rightIndex], should be sorted 
  in ascending order and stored in the elements 
  from array[0] to array[rightIndex+1].

In order to do this, the insert function will need 
to make room for value by moving items that are 
greater than value to the right. It should start 
at rightIndex, and stop when it finds an item that 
is less than or equal to value, or when it reaches
the beginning of the array. Once the function has 
made room for value, it can write value to the array.
=end

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


ary = [3, 5, 7, 11, 13, 2, 9, 6]
		 # 0, 1, 2,  3,  4, 5, 6, 7

puts insert(ary, 4,2).join(", ")
puts insert(ary, 5,9).join(", ")
puts insert(ary, 6,6).join(", ")