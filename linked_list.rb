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
            return current.val if i == index 
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

end