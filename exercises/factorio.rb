=begin
Finish the provided factorial function, so that it
returns the value n!. Your code should use a 
for loop to compute the product 1 * 2 * 3 * ... * n. 
If you write the code carefully, you won't need a 
special case for when n equals 0.
=end

def factorial(n)
	num = 1
	n.times { |j| num = num *(j+1) }
	return num
end

puts factorial(5) # => 120
puts factorial(0) # => 1