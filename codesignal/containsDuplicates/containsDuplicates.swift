func containsDuplicates(a: [Int]) -> Bool {
  
  guard a.count > 1 else { return false }
  
  // sort
  let temp = a.sorted(by: <)
  
  // look for duplicate
  var check = temp[0]
  for i in (1 ..< temp.count)  {
    if check == temp[i] {
      return true
    } else {
      check = temp[i]
    }
  }
  
  return false
}
