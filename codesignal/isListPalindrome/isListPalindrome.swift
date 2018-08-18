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

func isListPalindrome(l: ListNode<Int>?) -> Bool {
  var slow = l
  var fast = l
  var prevOfSlow = l
  var middle: ListNode<Int>? = nil
  
  if l != nil && l?.next != nil {
    // find middle
    while(fast != nil && fast?.next != nil ) {
      fast = fast?.next?.next
      prevOfSlow = slow
      slow = slow?.next
    }
    // odd size, have middle
    if fast != nil {
      middle = slow
      slow = slow?.next
    }
    
    var secondHalf = slow
    // mark end of first half
    prevOfSlow = nil
    
    // reverse second half
    var prev: ListNode<Int>? = nil
    var current = secondHalf
    var next: ListNode<Int>?
    //
    while current != nil {
      next = current?.next
      current?.next = prev
      prev = current
      current = next
    }
    secondHalf = prev
    
    // compare
    var t1 = l
    var t2 = secondHalf
    
    while t1 != nil && t2 != nil {
      if (t1!.value == t2!.value) {
        t1 = t1?.next
        t2 = t2?.next
      } else {
        return false
      }
    }
    
    return true
  }
  
  return true
}

// func isListPalindrome(l: ListNode<Int>?) -> Bool {
//   var sum: Int64 = 0
//   var count = 0
//   var pointer = l

//   while pointer != nil {
//     if let next = pointer?.next {
//       sum += next.value - pointer!.value
//     }

//     pointer = pointer?.next
//     count += 1
//   }

//   // case 1 element
//   if count == 1 {
//     return true
//   }

//   return sum == 0
// }
