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

	def pop
		current_node = @head
		while current_node != nil
			@tail = current_node if current_node.next == nil
			current_node = current_node.next
		end
	end

	def print
		current_node = @head
		while current_node != nil
			puts "\tLL Node Value = #{current_node.value}"
			current_node = current_node.next
		end
	end
end


list = LinkedList.new(Node.new("firstNode"))
1.upto(3) { |i| list.insert(Node.new("Node#{i}"))}
list.pop
list.print