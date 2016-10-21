class Node
	attr_accessor :value, :next

	def initialize(value)
		@value = value
	end
end

class LinkedList
	attr_accessor :head, :tail

	def initialize(head)
		raise "LinkedList must be initialized with a Node." unless head.is_a?(Node)
		@head = head
		@tail = head
	end

	def insert(node)
		@tail.next = node
		@tail      = @tail.next
	end

	def nexo
		puts @head.next.value
	end

	def print
		current_node = @head

		while current_node != nil
			puts "\tLL Node Value = #{current_node.value}"
			current_node = current_node.next
		end
	end

	def iterate
		if block_given?
			current_node = @head
			while current_node != nil
				yield current_node.value
				current_node = current_node.next
			end
		else
			print
		end
	end
end

puts "\nCreating LinkedList of 5 Node elements with values 1-5.\n"

h = Node.new(1)
list = LinkedList.new(h)

(2..5).each { |n| list.insert(Node.new(n)) }
puts "\nCurrent values contained in LinkedList:\n"

list.print

puts "\n"

list.nexo


# puts "Values of head and tail of LinkedList:\n"

# puts "\tValue of LL Head = #{list.head.value}"
# puts "\tValue of LL Tail = #{list.tail.value}"

# puts "\n"
# puts "Iterating through LinkedList without a block prints the list.\n"

# list.iterate

# puts "\n"
# puts "Iterating through the LinkedList with a block, runs the block on each element.\n"

# list.iterate { |n| puts "\tLL Node Value squared = #{n ** 2}" }

# puts "\n"