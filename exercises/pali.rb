def pali(word)
	return false if word[0] != word[-1]
	return true if word.length <= 1
	pali(word[1..-2])
end

puts pali("rotor")
puts pali("motor")
puts pali("itangabagnati")
puts pali("itopinonavevanonipoti")