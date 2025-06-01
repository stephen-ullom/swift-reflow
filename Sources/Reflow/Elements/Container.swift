public struct Container: Node {
  let attributes: [String: String]
  let styles: [String: String]
  let child: Node

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
