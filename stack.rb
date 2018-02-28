require_relative 'sorting'

class Stack
  def initialize
    @data = []
    @head = -1
  end

  def push(a)
    @data << a
    @head += 1
  end

  def pop
    result = @data[@head]
    # @data.delete_at(@head)
    @head -= 1
    result
  end

  def empty?
    @head == -1
  end

  def get_data
    @data
  end
end


class Extras
  def max(data)
    sort = Sorting::Sort.new
    sorted = sort.merge_sort(data)
    sorted[0]
  end

  def mean(data)
    sum = 0
    size = data.size
    data.each do |item|
      sum += item
    end
    sum/size
  end
end


# Testing with Data
#
# stack = Stack.new
#
#
# stack.push(4)
# stack.push(2)
# stack.push(10)
# stack.push(2)
# stack.push(3)
# stack.push(27)
# stack.push(23)
# stack.push(32)
# stack.push(25)
#
# extras = Extras.new
# puts extras.max(stack.get_data)


# stack.get_data.each do
#  puts stack.pop
# end


# arr = [1,2,3]
# extra = Extras.new
# puts extra.mean(arr)


