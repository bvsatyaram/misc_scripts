require_relative 'lib/utils'
require_relative '03_implement_linked_list'

class Stack < LinkedList
  def push(val)
    ele = StackElement.new(val)
    ele.next = self.head
    self.head = ele
  end

  def pop
    return nil if self.head.nil?
    ele = self.head
    self.head  = ele.next
    return ele.value
  end
end

class StackElement < LinkedListElement
end



st = Stack.new
assert_equal nil, st.pop
st.push 1
assert_equal 1, st.pop
st.push 2
st.push 3
st.push 4
st.push 5
assert_equal 5, st.pop
assert_equal 4, st.pop
assert_equal 3, st.pop
assert_equal 2, st.pop
assert_equal nil, st.pop
