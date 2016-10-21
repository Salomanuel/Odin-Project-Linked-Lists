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
      res = res + curr_node.value.to_s + ", " 
      curr_node = curr_node.next_node
    end
    res = res + curr_node.value.to_s + "]"
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

class Stack
  attr_reader :head

  def initialize
    @head = nil
  end

  def push(value)
    new_head = Node.new value, @head
    @head = new_head
  end

  def pop
    @head = @head.next_node
  end
end


head = Node.new 8, nil
snd  = Node.new 7, nil
head.next_node = snd

# puts head.reverse_list(head)

stack = Stack.new
stack.push(1)
stack.push(2)
stack.pop
stack.push(8)
stack.push(3)
puts  stack.head

