require_relative 'lib/utils'

class Stack
  def initialize
    @elements = Array.new(5)
    @tail_index = nil
  end

  def push(val)
    @tail_index ||= -1
    @tail_index += 1
    @elements[@tail_index] = val
  end

  def pop
    if @tail_index == 0
      @tail_index = nil
      return @elements[0]
    elsif @tail_index.nil?
      return nil
    end
    @tail_index -= 1
    return @elements[@tail_index + 1]
  end
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
