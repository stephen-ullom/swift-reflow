public struct Container: Node {
  let child: Node
  let styles: [String: String]
  let attributes: [String: String]

  public init(attributes: [String: String] = [:], styles: [String: String] = [:], child: Node) {
    self.child = child
    self.styles = styles
    self.attributes = attributes
  }

  public func render() -> String {
    return createElement(
      "div",
      attributes: attributes.merging(["style": createStyles(styles)]) { $1 },
      children: [child.render()])
  }
}
