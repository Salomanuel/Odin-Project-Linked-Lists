class Node
	attr_accessor :next, :value
	def initialize(value)
		@value = value
	end
end

class LinkedList
	attr_accessor :head, :tail
	def initialize(node)
		@head = node
		@tail = node
	end

	def append(node)
		@tail.next, @tail = node, node
	end

	def prepend(node)
		node.next, @head = @head, node
	end

	def pop
		first = @head
		while !first.nil?
			@tail, first.next = first, nil if (first.next).next.nil?			
			first = first.next
		end
	end

	def shift
		@head = @head.next
	end

	def iter
		first = @head
		ary = []
		while !first.nil?
			ary << first
			first = first.next
		end
		return ary
	end

	def size	
		return self.iter.length 
	end

	def at(index)	
		return self.iter[index].value
	end

	def to_s
		first = @head
		while !first.nil?
			(first.next.nil?) ? (print first.value) : (print "#{first.value} => ")
			first = first.next
		end
		puts
	end
end

list = LinkedList.new(Node.new("headNode"))
# puts list.head.value

2.times{ |i| list.append(Node.new("node#{i}"))}
list.append(Node.new("tailNode"))
list.prepend(Node.new("newHeadNode"))
puts "list size is #{list.size}"
list.pop
list.shift
list.to_s
puts "head is #{list.head.value}"
puts "tail is #{list.tail.value}"
puts "list size is #{list.size}"
puts "at position 2 is #{list.at(2)}"
puts "at position 0 is #{list.at(0)}"