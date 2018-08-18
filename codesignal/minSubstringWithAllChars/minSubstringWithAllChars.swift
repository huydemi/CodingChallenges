func minSubstringWithAllChars(s: String, t: String) -> String {
  let sArr = Array(s.characters)
  let sLen = s.characters.count
  let tLen = t.characters.count
  let needToFind = Array(t.characters)
  var hasFound: [Character: Int] = [:]
  var minWindow = Int.max
  var count = 0
  var begin = 0
  
  if sLen < tLen {
    return ""
  }
  
  if tLen == 0 || sLen == 0 {
    return ""
  }
  
  for end in (0 ..< sLen) {
    // skip if not in t
    if !needToFind.contains(sArr[end]) { continue }
    
    // exist, update index
    if let _ = hasFound[sArr[end]] {
      hasFound[sArr[end]] = end
      // not exist, keep
    } else {
      hasFound[sArr[end]] = end
      // increase count
      count += 1
    }
    
    // check count, found
    if count == tLen {
      // check distance
      let values = hasFound.values.sorted(by: <)
      let distance = values[values.count - 1] - values[0]
      
      if distance < minWindow {
        // update min window
        minWindow = distance
        // update first index
        begin = values[0]
      }
      
      // fast exit
      if minWindow == tLen {
        break
      }
    }
  }
  
  if count == tLen {
    return String(sArr[begin ... begin + minWindow])
  } else {
    return ""
  }
}

