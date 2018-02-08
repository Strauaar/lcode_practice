# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

# @param {ListNode} head
# @param {Integer} x
# @return {ListNode}
def partition(head, x)
    pre = []
    post = []
    current_node = head
    until current_node == nil
        if current_node.val < x
            pre << current_node.val
        else
            post << current_node.val
        end
        current_node = current_node.next
    end
    correct_order = pre + post
    ll = []
    for i in 0...correct_order.length
        node = ListNode.new(correct_order[i]) 
        ll[i] = node
    end
    for i in 0...ll.length - 1
        ll[i].next = ll[i + 1] 
    end
    ll[0]
end