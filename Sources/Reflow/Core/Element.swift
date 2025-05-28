struct Element: Node {
  public let tag: String
  public let attributes: [String: String]
  public let children: [Node]

  public init(tag: String, attributes: [String: String] = [:], children: [Node] = []) {
    self.tag = tag
    self.attributes = attributes
    self.children = children
  }

  public func render() -> String {
    let attributeString = attributes.map { "\($0.key)=\"\($0.value)\"" }.joined(separator: " ")
    let inner = children.map { $0.render() }.joined()
    let open = attributeString.isEmpty ? "<\(tag)>" : "<\(tag) \(attributeString)>"

    return "\(open)\(inner)</\(tag)>"
  }
}
