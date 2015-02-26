# Write  a method that takes in a linked list as argument and print the elements
# of the linked list inr everse order.
require_relative '03_implement_linked_list'

# Yey! Power of recursion revealed!
def print_linked_list_in_reverse(linked_list, arr = [])
  val = linked_list.head.value
  linked_list.head = linked_list.head.next
  arr = print_linked_list_in_reverse(linked_list, arr) if linked_list.head
  arr << val
  return arr
end

# class LinkedList
#   def length
#     len = 1
#     ele = head
#     while ele.next
#       len += 1  
#       ele = ele.next
#     end
#     return len
#   end

#   def nth_element(n)
#     j = 1
#     ele = head
#     while j < n
#       ele = ele.next
#       j += 1
#     end

#     return ele
#   end
# end

# def print_linked_list_in_reverse(linked_list)
#   ele = linked_list.head
#   length = linked_list.length
  
#   arr = []
#   (1..length).to_a.reverse.each do |i|    
#     arr << linked_list.nth_element(i).value
#   end

#   return arr
# end


###########
# Test
##########
ll = LinkedList.new
ele = LinkedListElement.new(1)
ll.head = ele
(2..9).each do |i|
  ele.next = LinkedListElement.new(i)
  ele = ele.next
end

if print_linked_list_in_reverse(ll) == (1..9).to_a.reverse
  puts "Pass"
else
  puts "Expected #{(1..9).to_a.reverse} but got #{print_linked_list_in_reverse(ll)}"
end