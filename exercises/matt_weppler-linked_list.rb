class Node
	attr_accessor :node, :next

	def initialize(node)
		@node = node
	end

	def self.node_list(node, msg=nil)
		msg ||= ""
		return msg[0..-4] if node.nil?
		node_list(node.next, msg << "#{node.node} -> ")
	end
end


node1 = Node.new("first")
node2 = Node.new("second")
node3 = Node.new("third")

node1.next = node2
node2.next = node3

puts node1.next.next.node
puts Node.node_list(node1)