func arrayMaxConsecutiveSum2(inputArray: [Int]) -> Int {
  var max_end = 0
  var max_so_far = Int.min
  
  for n in inputArray {
    max_end += n
    if max_so_far < max_end {
      max_so_far = max_end
    }
    if max_end < 0 {
      max_end = 0
    }
  }
  
  return max_so_far
}
