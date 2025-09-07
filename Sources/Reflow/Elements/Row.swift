public struct Row: Node {
  public let attributes: [String: String]
  public let styles: [String: String]
  public let children: [Node]

  public init(
    attributes: [String: String] = [:],
    styles: [String: String] = [:],
    children: [Node]
  ) {
    self.attributes = [:]
    self.styles = styles
    self.children = children
  }

  public func render() -> String {
    let baseStyles = ["display": "flex"]
    let combinedStyles = baseStyles.merging(styles) { $1 }

    return createElement(
      "div",
      attributes: attributes.merging(["style": createStyles(combinedStyles)]) { $1 },
      children: children.map { $0.render() }
    )
  }
}
