/*
Detect a cycle in a linked list. Note that the head pointer may be 'null' if the list is empty.

A Node is defined as: 
    class Node {
        int data;
        Node next;
    }
*/

boolean hasCycle(Node head) {
    // check empty list
    if (head == null) {
        return false;
    }

    Node runner = head;
    int i = 0;
    // run each next node
    while (runner.next != null) {
        runner = runner.next;
        i++;

        // run again from head to current node
        Node runner2 = head;
        int j = 0;
        while (runner2.next != null && runner2 != runner) {
            runner2 = runner2.next;
            j++;
        }

        // check circle
        if (j < i) {
            return true;
        }
    }

    // out of loop which mean have no circle
    return false;
}
