// Definition for singly-linked list:
// public class ListNode<T> {
//     public var value: T
//     public var next: ListNode<T>?
//     public init(_ x: T) {
//         self.value = x
//         self.next = nil
//     }
// }
//
func removeKFromList(l: ListNode<Int>?, k: Int) -> ListNode<Int>? {
  var head = l
  var previous: ListNode<Int>? = nil
  var pointer = l
  
  while pointer != nil {
    // k value, remove
    if pointer!.value == k {
      if previous != nil {
        previous!.next = pointer!.next
      } else {
        head = pointer!.next
      }
    } else {
      // update previous
      previous = pointer
    }
    // go to next item
    pointer = pointer!.next
  }
  
  return head
}
