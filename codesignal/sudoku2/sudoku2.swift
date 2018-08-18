func sudoku2(grid: [[Character]]) -> Bool {
  
  let zeroCode = UnicodeScalar("0")!.hashValue
  
  for r in (0 ..< 9) {
    
    var rows = [Int](repeating: 0, count: 10)
    var cols = [Int](repeating: 0, count: 10)
    var boxes = [Int](repeating: 0, count: 10)
    
    for c in (0 ..< 9) {
      // check row
      if "\(grid[r][c])" != "." {
        let a = UnicodeScalar("\(grid[r][c])")!.hashValue
        if rows[a - zeroCode] > 0 { return false }
        rows[a - zeroCode] += 1
      }
      
      // check col
      if grid[c][r] != "." {
        let a = UnicodeScalar("\(grid[c][r])")!.hashValue
        if cols[a - zeroCode] > 0 { return false }
        cols[a - zeroCode] += 1
      }
      
      
      // check box
      let rowIndex = 3 * (r / 3)
      let colIndex = 3 * (r % 3)
      if grid[rowIndex + c / 3][colIndex + c % 3] != "." {
        let a = UnicodeScalar("\(grid[rowIndex + c / 3][colIndex + c % 3])")!.hashValue
        if boxes[a - zeroCode] > 0 { return false }
        boxes[a - zeroCode] += 1
      }
    }
  }
  
  return true
}
