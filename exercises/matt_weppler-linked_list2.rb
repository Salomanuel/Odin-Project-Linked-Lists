class Node
	attr_accessor :node, :next
	def initialize(node)
		@node = node
	end
end

node = Node.new("first")

puts node.node
puts node.node.class

node2 = Node.new("second")

node.next = node2

puts node.next
puts node.next.node