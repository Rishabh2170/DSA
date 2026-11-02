# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def addTwoNumbers(self, l1: Optional[ListNode], l2: Optional[ListNode]) -> Optional[ListNode]:
        dummy = ListNode(0)
        current = dummy
        carry = 0
        while l1 is not None or l2 is not None or carry:
            x = l1.val if l1 is not None else 0
            y = l2.val if l2 is not None else 0

            sum = x + y + carry
            digit = sum % 10
            carry = sum // 10


            node = ListNode(digit)
            current.next = node
            current = current.next

            if l1 is not None:
                l1 = l1.next
            if l2 is not None:
                l2 = l2.next

        return dummy.next
       




