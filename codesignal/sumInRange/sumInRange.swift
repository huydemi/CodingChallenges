func sumInRange(nums: [Int], queries: [[Int]]) -> Int {
  // brute force
  var sum = 0
  var sumTbl = sumTable(nums)
  
  for i in queries {
    let a = i[0] == 0 ? 0 : sumTbl[i[0] - 1]
    let b = sumTbl[i[1]]
    
    sum += b - a
    sum = mod(sum, 1000000007)
  }
  
  return sum //mod(sum, 1000000007)
}

private func mod(_ a: Int, _ n: Int) -> Int {
  precondition(n > 0, "modulus must be positive")
  let r = a % n
  return r >= 0 ? r : r + n
}

private func sumTable(_ nums: [Int]) -> [Int] {
  var sum: [Int] = []
  var s = 0
  
  for n in nums {
    s += n
    sum.append(s)
  }
  
  return sum
}
