class Node
	attr_accessor :value, :next_node

	def initialize(value, next_node)
		@value     = value
		@next_node = next_node
	end

	def self.nodes_from(node)
		puts node.value
		while !node.next_node.nil?
			puts node.next_node.value
			node = node.next_node
		end
	end
end

node1 = Node.new("first", nil)
node2 = Node.new("second", nil)
node3 = Node.new("third", nil)
node4 = Node.new("fourth", nil)

node1.next_node = node2
node2.next_node = node3
node3.next_node = node4

Node.nodes_from(node1)

# puts node1.next_node.value