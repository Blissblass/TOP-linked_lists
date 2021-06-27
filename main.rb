require_relative 'linked_list.rb'

# Lets make a new Linked List
# I know this looks suuuuuper messy but bare with me

list = LinkedList.new
list.prepend_value(1)
list.append_value(6)
list.head.next_node = Node.new(2)
list.head.next_node.next_node = Node.new(3)
list.head.next_node.next_node.next_node = Node.new(4)
list.head.next_node.next_node.next_node.next_node = Node.new(5)
list.head.next_node.next_node.next_node.next_node.next_node = list.tail 

# Basically its like 1 -> 2 -> 3 -> 4 -> 5 -> 6 -> nil 

#----------------------------------------------------------------------------------#

# p list.size
# p list.contains?(5)
# p list.contains?(7) # will return false
# p "Item with value of 3 is at index: #{list.find(3)}" # Head will be at index 0 ! I wanted to keep the 0 based index system
# p "Item at index 4 is: #{list.node_at(0)}"
# p list.to_s_with_index
# list.insert_at("test", 3)
# p list.to_s_with_index
