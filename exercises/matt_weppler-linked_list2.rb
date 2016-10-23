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

	def self.reverse(node)
		return node if node.next.nil?
		head, swap, node.next = node.next, node, nil
		link = head.next

		while link != nil
			head.next = swap
			swap      = head
			head      = link
			link      = link.next
		end

		head.next = swap
		head
	end
end

node  = Node.new("first")
# puts node.node
# puts node.node.class
node2 = Node.new("second")
node3 = Node.new("third")
node4 = Node.new("fourth")
node.next  = node2
node2.next = node3
node3.next = node4
# puts node.next
# puts node.next.node

puts Node.node_list(node)
puts Node.node_list(Node.reverse(node))