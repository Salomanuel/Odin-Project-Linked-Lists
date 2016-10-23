# remove_at is not working currently


# Extra Credit

#remove_at(index) that removes the node at the given index. 
#(You will need to update the links of your nodes in the list when you remove a node.)


class Node
	attr_accessor :next, :value
	def initialize(value)
		@value = value
	end
end

class LinkedList
	attr_accessor :head, :tail
	def initialize(node)
		raise "should be initialized with a node" if node.class != Node
		@head = node
		@tail = node
	end

	def append(data)
		node = Node.new(data)
		@tail.next, @tail = node, node
	end

	def prepend(data)
		node = Node.new(data)
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

	def contains(value)
		return uoo = iter.map { |n| n.value }.include?(value)
	end

	def find(value)
		return uoo = iter.map { |n| n.value }.index(value)
	end

	def insert_at(i, value)
		if i == self.size
			self.append(value)
		elsif i > self.size or i < 0
			return nil
		else
			temp = @head
			count = 0
			new_node = Node.new(value)
			while count == i
				temp = temp.next
				i += 1
			end
			temp2 = temp.next
			temp.next = new_node
			new_node.next = temp2
		end
	end

	def delete_at(i)
		if i > self.size or i < 0
			raise "error, index not valid"
		else
			count = 0
			temp = @head
			until count == i - 1
				count += 1
				temp = temp.next
			end
			if i == self.size
				temp      == @tail
				temp.next == nil
			else
				temp.next = (temp.next).next
			end
		end
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

2.times{ |i| list.append("node#{i}")}
list.append("tailNode")
list.prepend("newHeadNode")
# puts "list size is #{list.size}"
list.pop
list.shift
# list.to_s
# puts "head is #{list.head.value}"
# puts "tail is #{list.tail.value}"
# puts "list size is #{list.size}"
# puts "at position 2 is #{list.at(2)}"
# puts "at position 0 is #{list.at(0)}"
# puts list.contains("node0")
# puts list.contains("banana")
# puts list.contains("headNode")
# puts list.find("headNode")
# puts list.find("node1")
puts "**"
list.insert_at(3, "uoo")
list.insert_at(1, "duo")
list.delete_at(2)
list.to_s