import Foundation

// Complete the alternatingCharacters function below.
func alternatingCharacters(s: String) -> Int {
  if s.characters.count < 2 { return 0 }
  
  var chars = Array(s.characters)
  var current = chars[0]
  var remove = 0
  
  for i in (1 ..< chars.count) {
    if current == chars[i] {
      remove += 1
    } else {
      current = chars[i]
    }
  }
  
  return remove
}

let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let q = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
  else { fatalError("Bad input") }

for qItr in 1...q {
  guard let s = readLine() else { fatalError("Bad input") }
  
  let result = alternatingCharacters(s: s)
  
  fileHandle.write(String(result).data(using: .utf8)!)
  fileHandle.write("\n".data(using: .utf8)!)
}
