require_relative 'lib/utils'
require_relative '03_implement_linked_list'

class Queueue < LinkedList
  attr_accessor :tail

  def pop
    ele = self.head
    if ele.nil?
      return nil
    elsif self.head == self.tail
      val = self.head.value
      self.head = self.tail = nil
      return val
    else
      self.head = self.head.next
      return ele.value
    end
  end

  def push(val)
    ele = QueueueElement.new(val)
    if self.tail.nil?
      self.head = self.tail = ele
    else
      self.tail.next = ele
      self.tail = ele
    end
  end
end

class QueueueElement < LinkedListElement
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
