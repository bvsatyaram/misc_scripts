class LinkedList
  attr_accessor :head 
end

class LinkedListElement
  attr_accessor :next
  attr_accessor :value

  def initialize(val)
    self.value = val
  end
end

# 7 => 3 => 2 => 9 => 4

# ll = LinkedList.new
# ll.push 7
# ll.push 3
# ll.push 2
# ll.push 9
# ll.push 4
# e1 = ll.head #=> 7
# e2 = e1.next #=> 3