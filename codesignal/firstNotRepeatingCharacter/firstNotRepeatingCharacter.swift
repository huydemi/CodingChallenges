func firstNotRepeatingCharacter(s: String) -> Character {
  var seen: [Character: (firstIndex: Int, count: Int)] = [:]
  
  for (i, c) in s.characters.enumerated() {
    if seen[c] == nil {
      seen[c] = (i, 1)
    } else {
      seen[c]!.count += 1
    }
  }
  
  if let t = seen.filter({ $0.value.count == 1 })
    .sorted(by: { $0.value.firstIndex < $1.value.firstIndex }).first {
    return t.key
  } else {
    return "_"
  }
}
