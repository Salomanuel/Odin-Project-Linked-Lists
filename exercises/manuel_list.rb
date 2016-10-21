class Node
	attr_accessor :value, :next
	def initialize(value)
		@value = value
	end
end

class LinkedList
	attr_accessor :head, :tail
	def initialize(node)
		raise "it should be initialized with a node" if node.class != Node
		@head = node
		@tail = node
	end

	def insert(node)
		@tail.next = node
		@tail = @tail.next
	end

	def printo(starting_node=@head)
		print "#{starting_node.value}"
		while starting_node.next != nil
			starting_node = starting_node.next
			print " => #{starting_node.value}"
		end
		puts
	end
end

node1 = Node.new("first")
# puts node1.value

list = LinkedList.new(node1)
# node2 = Node.new("second")
# node3 = Node.new("third")
# node4 = Node.new("fourth")
# node1.next = node2
# node2.next = node3
# node3.next = node4
# list.insert(node2)
2.upto(5) { |i| list.insert(Node.new("node#{i}")) }
list.printo