=begin
The base case is when n=0 = and x**0=1

If n is positive and even, 
	recursively compute y=x**(n/2) 
						 and then x**n=y⋅y
	Notice that you can get away with making just one 
	recursive call in this case, computing x**(n/2)
	just once, and then you multiply the result of 
	this recursive call by itself.

If n is positive and odd, recursively compute 
	x**(n−1)​, so that the exponent either is 0 or 
	is positive and even. Then, x**n=x**(n−1)⋅x.

If n is negative, recursively compute x**−n, so that
the exponent becomes positive. Then, x**n=1/x**(−n)​​.
=end


def powa(x, n)
	return 1 if n == 0
	if 			 n > 0 and n % 2 != 0
		return powa(x,(n-1)) * x
	elsif 	 n > 0 and n % 2 == 0
		return powa(x,(n/2)) * powa(x,(n/2))
	else
		return 1.00/powa(x,-n)
	end
end

puts powa(3,0)	# => 1
puts powa(3,1)	# => 3
puts powa(3,2)	# => 9
puts powa(3,4)
puts powa(3,-1)	# => 1/3
puts powa(9,22)

