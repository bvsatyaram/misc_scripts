# Given a linked list, check if the list has a loop

require_relative 'lib/utils'
require_relative '03_implement_linked_list'

def check_for_loop_in_linked_list(linked_list)
  e1 = linked_list.head
  e2 = linked_list.head
  while(e2.try(:next))
    e1 = e1.next
    e2 = e2.next.next
    if e1 == e2
      return true
      break
    end
  end

  return false
end

def assert(condition)
  if condition
    puts "Pass"
  else
    puts "Fail"
  end
end

ll = LinkedList.new
e1 = LinkedListElement.new(1)
ll.head = e1
e2 = LinkedListElement.new(2)
e1.next = e2
e3 = LinkedListElement.new(3)
e2.next = e3
e4 = LinkedListElement.new(4)
e3.next = e4
e5 = LinkedListElement.new(5)
e4.next = e5
assert(!check_for_loop_in_linked_list(ll))

e5.next = e1
assert(check_for_loop_in_linked_list(ll))

e5.next = e3
assert(check_for_loop_in_linked_list(ll))
