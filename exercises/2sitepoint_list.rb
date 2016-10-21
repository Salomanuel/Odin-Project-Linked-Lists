class Node
	attr_accessor :value, :next_node

	def initialize(value, next_node)
		@value = value
		@next_node = next_node
	end

	def to_s
		curr_node = self
		res = "["
		while curr_node.next_node != nil
			res += curr_node.value.to_s + ", "
			curr_node = curr_node.next_node
		end
		res += curr_node.value.to_s + "]"
	end

	def reverse_list(curr)
		return curr if curr == nil or curr.next_node == nil
		next_node = curr.next_node
		new_head  = reverse_list(curr.next_node)
		next_node.next_node = curr
		curr.next_node      = nil
		return new_head
	end
end


head = Node.new 8, nil
snd  = Node.new 7, nil
head.next_node = snd
puts head
# puts reverse_list(snd)	# => NOT WORKING

