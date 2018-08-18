func productExceptSelf(nums: [Int], m: Int) -> Int {
  var prefixProduct: [Int] = [Int](repeating: 1, count: nums.count)
  var suffixProduct: [Int] = [Int](repeating: 1, count: nums.count)
  
  // setup pre and suf
  for i in (1 ..< nums.count) {
    prefixProduct[i] = (prefixProduct[i - 1] * nums[i - 1]) % m
    suffixProduct[nums.count - i - 1] = (suffixProduct[nums.count - i] * nums[nums.count - i]) % m
  }
  
  var total = 0
  for i in (0 ..< nums.count) {
    total += (prefixProduct[i] * suffixProduct[i]) % m
  }
  
  return total % m
}
