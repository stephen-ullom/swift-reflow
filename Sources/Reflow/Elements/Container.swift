public struct Container: Node {
  public let attributes: [String: String]
  public let styles: [String: String]
  public let child: Node

  public init(
    attributes: [String: String] = [:],
    styles: [String: String] = [:],
    child: Node
  ) {
    self.attributes = attributes
    self.styles = styles
    self.child = child
  }

  public func render() -> String {
    return createElement(
      "div",
      attributes: attributes.merging(["style": createStyles(styles)]) { $1 },
      children: [child.render()])
  }
}
