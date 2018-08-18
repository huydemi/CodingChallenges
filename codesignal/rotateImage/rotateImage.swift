func rotateImage(a: [[Int]]) -> [[Int]] {
  let n = a.count
  var temp = a
  
  guard n > 2 else { return a }
  
  for i in (0 ... n - 2) {
    for j in (i + 1 ... n - 1) {
      (temp[i][j], temp[j][i]) = (temp[j][i], temp[i][j])
    }
  }
  
  let half = Int(floor(Double(n) / 2.0))
  for i in (0 ..< n) {
    
    for j in (0 ..< half) {
      (temp[i][j], temp[i][n - j - 1]) = (temp[i][n - j - 1], temp[i][j])
    }
  }
  
  return temp
}
