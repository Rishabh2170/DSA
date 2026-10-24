# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def isPalindrome(self, head: ListNode | None) -> bool:
        slow = head
        fast = head
        while fast.next is not None and fast.next.next is not None:
            slow = slow.next
            fast = fast.next.next

        second = slow.next
        second_half = second
        slow.next = None

        prev = None
        current = second_half

        while current is not None:
            front = current.next
            current.next = prev

            prev = current
            current = front

        p1 = head
        p2 = prev

        while p2 is not None:

            if p1.val != p2.val:
                return False
            p1 = p1.next
            p2 = p2.next

        return True


            



