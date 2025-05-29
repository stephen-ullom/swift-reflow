public func createElement(
  _ tag: String,
  attributes: [String: String] = [:],
  children: [String] = []
) -> String {
  let attributeString = attributes.map { "\($0.key)=\"\($0.value)\"" }.joined(separator: " ")
  let open = attributeString.isEmpty ? "<\(tag)>" : "<\(tag) \(attributeString)>"

  return "\(open)\(children.joined())</\(tag)>"
}
