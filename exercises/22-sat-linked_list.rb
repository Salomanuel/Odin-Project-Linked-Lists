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
list.to_s