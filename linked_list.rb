require_relative 'node.rb'

class LinkedList

    attr_reader :head, :tail

    def initialize
        @head = nil
        @tail = nil
    end

    def prepend_value(val) 
        @head = Node.new(val)
    end

    def append_value(val)
        @tail = Node.new(val)
    end

    def size 
        count = 0
        current = @head

        until current.nil?
            count += 1
            current = current.next_node
        end

        count
    end

    def node_at(index)
        i = 0
        current = @head

        until current.nil?
            return current if i == index 
            current = current.next_node
            i += 1
        end

        nil 
    end

    def contains?(target)
        current = @head

        until current.nil?
            return true if current.val == target
            current = current.next_node
        end

        false
    end

    def find(target)
        i = 0
        current = @head

        until current.nil?
            return i if current.val == target
            current = current.next_node
            i += 1
        end

        nil
    end

    def pop # We iterate through the list until we hit @tail, we delete current @tail and set @tail to the node before it
        current = @head
        current = current.next_node until current.next_node == @tail
        current.next_node == nil
        @tail == current 
    end

    def to_s
        current = @head

        until current.nil?
            print "(#{current.val}) -> "
            current = current.next_node
        end
    end

    def to_s_with_index
        current = @head
        i = 0
        until current.nil?
            print "#{i}: (#{current.val}) -> "
            current = current.next_node
            i += 1
        end
    end

    def insert_at(val, i)
        temp = node_at(i) # We get the node at the given index
        prev_node = node_at(i - 1) # We get the node before it
        new_node = Node.new(val) # We create a new node with the given val
        prev_node.next_node = new_node # We set the previous nodes next_node to the new node
        new_node.next_node = temp.next_node # We set the new nodes pointer to the old nodes pointer (you can do this in one line i just split it up to make it readable)
    end

    def remove_at(i)
        current = node_at(i) # We get the node at given index
        prev = node_at(i - 1) # We get the node before it
        prev.next_node = current.next_node # We set the previous nodes pointer to the node after the node at index, thus deleting(skipping) the current node
    end

end