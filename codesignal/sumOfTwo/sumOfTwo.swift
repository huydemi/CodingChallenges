func sumOfTwo(a: [Int], b: [Int], v: Int) -> Bool {
  let x = a.sorted(by: <)
  let y = b.sorted(by: <)
  
  // improve performance
  if x.count > 0 && y.count > 0 {
    // v < min 1 + min 2, exit
    if x[0] + y[0] > v { return false }
    // v > max 1 + max 2, exit
    if x[x.count - 1] + y[y.count - 1] < v { return false }
  }
  
  for i in x {
    for j in y {
      if i + j == v {
        return true
      } else if i + j > v {
        break
      }
    }
  }
  
  return false
}
