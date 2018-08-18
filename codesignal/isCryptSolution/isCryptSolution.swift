func isCryptSolution(crypt: [String], solution: [[Character]]) -> Bool {
  let dic = toDic(solution)
  
  // decrypt each words
  guard let w1 = decrypt(crypt[0], dic: dic) else { return false }
  guard let w2 = decrypt(crypt[1], dic: dic) else { return false }
  guard let w3 = decrypt(crypt[2], dic: dic) else { return false }
  
  // validate no leading zeros on each words
  if w1.characters.count > 1 && w1.characters.first == "0" { return false }
  if w2.characters.count > 1 && w2.characters.first == "0" { return false }
  if w3.characters.count > 1 && w3.characters.first == "0" { return false }
  
  // convert to number, return result of w1 + w2 = w3
  return Int(w1)! + Int(w2)! == Int(w3)!
}

private func toDic(_ solution: [[Character]]) -> [Character: Character] {
  var dic: [Character: Character] = [:]
  for i in solution {
    dic[i[0]] = i[1]
  }
  return dic
}

private func decrypt(_ encoded: String, dic: [Character: Character]) -> String? {
  var chars: [Character] = []
  
  for (_, c) in encoded.characters.enumerated() {
    if let n = dic[c] {
      chars.append(n)
    } else {
      return nil
    }
  }
  
  return String(chars)
}
