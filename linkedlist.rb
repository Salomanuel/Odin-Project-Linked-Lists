=begin
You will need two classes:
*  LinkedList class, which will represent the 
*  									full list.
*  Node class, containing a #value method and a 
*  link to the #next_node, set both as nil by 
*  default.

Build the following methods in your linked list class:
* #append adds a new node to the end of the list
*  #prepend adds a new node to the start of the list
  #size returns the total number of nodes in the list
  #head returns the first node in the list
  #tail returns the last node in the list
  #at(index) returns the node at the given index
  #pop removes the last element from the list
  #contains? returns true if the passed in value 
  	is in the list and otherwise returns false.
  #find(data) returns the index of the node 
  	containing data, or nil if not found.
* #to_s represent your LinkedList objects as 
  	strings, so you can print them out and 
  	preview them in the console. The format 
  	should be: 
  	( data ) -> ( data ) -> ( data ) -> nil
=end

class LinkedList
	def initialize(node)
		raise "list should be initialized with a NODE" if node.class != Node
		@head = node
		@tail = node
	end

	def append(node)
		@tail.next = node
		@tail = @tail.next
	end

	def prepend(node)
		temp = @head
		@head = node
		@head.next = temp
	end

	def to_s
		print @head.value
		while @head.next != nil
			print " => #{@head.next.value}"
			@head = @head.next
		end
		puts
	end
end

class Node
	attr_accessor :next, :value
	def initialize(value)
		@value = value
	end

	# def next_node
	# end
end

list = LinkedList.new(node1 = Node.new("nodeFirst"))
1.upto(4) { |i| list.append(Node.new("node#{i}")) }

list.prepend(Node.new("pre_node1"))

# puts node1.value

list.to_s

