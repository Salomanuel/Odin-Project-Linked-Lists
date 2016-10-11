=begin
1. Let min = 0 and max = n-1.
2. If max < min, then stop: target is not present in array. Return -1.
3. Compute guess as the average of max and min, rounded down (so that it is an integer).
4. If array[guess] equals target, then stop. You found it! Return guess.
5. If the guess was too low, that is, array[guess] < target, then set min = guess + 1.
6. Otherwise, the guess was too high. Set max = guess - 1.
7. Go back to step 2.

array.lenght = 25
min   = 13
max   = 24
guess = 12
array[guess] < target (41 < 67)
min:13, guess:12, max:24
=end

def doSearch(array, target)
	min      = 0																							# => 1.
	max      = array.length - 1																# => 1.		
	searches = 0
	while true do 																						# => 7.
		searches += 1
		guess = (min + max) / 2																	# => 3.
		if max < min
			return "target not present in array"									# => 2.
		elsif	array[guess] == target														# => 4.
			return "target is in position #{guess}, found in #{searches} tries"	# => 4.
		elsif array[guess] < target															# => 5.
			min = guess + 1																				# => 5.
		else																										# => 6.
			max = guess - 1																				# => 6.
		end
	end
end

var_primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97];

puts doSearch(var_primes, 73)