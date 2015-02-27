require_relative 'lib/utils'

class Queueue
  attr_accessor :head_index, :tail_index

  def initialize
    @elements = Array.new(5)
  end

  def push(val)
    self.tail_index ||= -1
    self.tail_index += 1
    @elements[self.tail_index] = val    
    self.head_index = 0 if self.head_index.nil?
  end

  def pop
    return nil if self.head_index.nil?
    val = @elements[self.head_index]
    if self.head_index == self.tail_index
      self.head_index = self.tail_index = nil
    else
      self.head_index += 1
    end

    return val
  end
end

queue = Queueue.new
assert_equal nil, queue.pop
queue.push 1
assert_equal 1, queue.pop
queue.push 2
queue.push 3
queue.push 4
queue.push 5
assert_equal 2, queue.pop
assert_equal 3, queue.pop
assert_equal 4, queue.pop
assert_equal 5, queue.pop
assert_equal nil, queue.pop
