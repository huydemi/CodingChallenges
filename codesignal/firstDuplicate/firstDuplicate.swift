func firstDuplicate(a: [Int]) -> Int {
  var temp = a
  // case empty
  guard a.count > 0 else { return -1 }
  // case no duplicate
  // (n * (n + 1)) / 2 = sume
  let max = (a.count * (a.count + 1)) / 2
  let sum = a.reduce(0, +)
  if sum == max { return -1 }
  // case have duplicate
  for i in temp {
    // check negative
    if temp[abs(i) - 1] < 0 {
      return i
      // set negative
    } else {
      temp[abs(i) - 1] = -temp[abs(i) - 1]
    }
  }
  return -1
}
