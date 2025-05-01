/*
You are given two non-empty linked lists representing two non-negative integers.
The digits are stored in reverse order, and each of their nodes contains a 
single digit. Add the two numbers and return the sum as a linked list.

You may assume the two numbers do not contain any leading zero, 
except the number 0 itself.
Input: l1 = [2,4,3], l2 = [5,6,4]
Output: [7,0,8]
Explanation: 342 + 465 = 807.

Input: l1 = [9,9,9,9,9,9,9], l2 = [9,9,9,9]
Output: [8,9,9,9,0,0,0,1]
*/

// Defines a basic linked list node with an integer value and a pointer to the next node.
class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
    ListNode? head;
    ListNode? current;
    int carry = 0;

    while (l1 != null || l2 != null || carry != 0) {
      int x = l1?.val ?? 0;
      int y = l2?.val ?? 0;
      int sum = x + y + carry;
      carry = sum ~/ 10;
      ListNode newNode = ListNode(sum % 10);

      if (head == null) {
        head = newNode;
        current = newNode;
      } else {
        current!.next = newNode;
        current = current.next;
      }

      l1 = l1?.next;
      l2 = l2?.next;
    }
    return head;
  }
}
