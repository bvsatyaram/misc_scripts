require_relative '03_implement_linked_list'

class DoubleLinkedList < LinkedList
  attr_accessor :tail

  def append(ele)
    if self.tail.nil?
      self.head = ele
      self.tail = ele
    else
      self.tail.next = ele
      ele.prev = self.tail
      self.tail = ele
    end
    puts "Head is: #{self.head.value}, Tail is: #{self.tail.value}"
  end

  def prepend(ele)
    if self.head.nil?
      self.head = ele
      self.tail = ele
    else
      self.head.prev = ele
      ele.next = self.head
      self.head = ele
    end
    puts "Head is: #{self.head.value}, Tail is: #{self.tail.value}"
  end
end

class DoubleLinkedListElement < LinkedListElement
  attr_accessor :prev
end

# class DoubleLinkedList
#   attr_accessor :head, :tail

#   def append(ele)
#     if self.tail.nil?
#       self.head = ele
#       self.tail = ele
#     else
#       self.tail.next = ele
#       ele.prev = self.tail
#       self.tail = ele
#     end
#     puts "Head is: #{self.head.value}, Tail is: #{self.tail.value}"
#   end

#   def prepend(ele)
#     if self.head.nil?
#       self.head = ele
#       self.tail = ele
#     else
#       self.head.prev = ele
#       ele.next = self.head
#       self.head = ele
#     end
#     puts "Head is: #{self.head.value}, Tail is: #{self.tail.value}"
#   end
# end

# class DoubleLinkedListElement
#   attr_accessor :next, :prev, :value

#   def initialize(val)
#     self.value = val
#   end
# end


dll = DoubleLinkedList.new
e1 = DoubleLinkedListElement.new(2)
dll.append(e1) # 2
e2 = DoubleLinkedListElement.new(1)
dll.prepend(e2) # 1-2
e3 = DoubleLinkedListElement.new(3)
dll.append(e3) # 1-2-3

ele = dll.head
while ele
  puts ele.value
  ele = ele.next
end