# Given a circular linked list, find the poitn of intersection

require_relative 'lib/utils'
require_relative '03_implement_linked_list'

def find_intersection_of_circular_list(linked_list)
  e1 = linked_list.head
  e2 = linked_list.head

  while true
    e1 = e1.next
    e2 = e2.next.next
    break if e1 == e2
  end

  if e1 == linked_list.head
    return e1.value
  else
    e2 = linked_list.head
    while (e1 != e2)
      e1 = e1.next
      e2 = e2.next
    end

    return e1.value
  end
end

def assert_equal(expected, actual)
  if actual == expected
    puts "Pass"
  else
    puts "Fail- Expected: #{expected}, but got: #{actual}"
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
e5.next = e1

assert_equal(e1.value, find_intersection_of_circular_list(ll))

e5.next = e3
assert_equal(e3.value, find_intersection_of_circular_list(ll))
