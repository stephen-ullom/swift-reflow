public struct Container: Node {
  let child: Node
  let styles: [String: String]

  public init(styles: [String: String] = [:], child: Node) {
    self.child = child
    self.styles = styles
  }

  public func render() -> String {
    return createElement(
      "div", attributes: ["style": createStyles(styles)], children: [child.render()])
  }
}
