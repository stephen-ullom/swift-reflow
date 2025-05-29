public func createStyles(_ styles: [String: String] = [:]) -> String {
  let styleString = styles.map { "\($0.key): \($0.value)" }.joined(separator: "; ")

  return styleString.isEmpty ? "" : "\(styleString);"
}
