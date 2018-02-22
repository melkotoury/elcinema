require_relative 'linked_list'

class Stack
  extend LinkedList

  def initialize
    @first = nil
  end

  def push(value)
    @first = LinkedList::Node.new(value, @first)
  end
  alias_method :"<<", :push

  def pop
    raise "Stack is empty" if is_empty?
    value = @first.value
    @first = @first.next_node
    value
  end

  def is_empty?
    @first.nil?
  end
end



# testing
stack = Stack.new
i = 0
loop do
  i += 1
  stack << i
  if i == 100000
    break       # this will cause execution to exit the loop
  end
end


begin
  i = 0
  loop do
    i += 0
    puts stack.pop
    if i == 100000
      break       # this will cause execution to exit the loop
    end
  end
rescue RuntimeError => e
  puts "Error - #{e.message}"
end

