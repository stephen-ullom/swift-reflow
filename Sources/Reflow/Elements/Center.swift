public struct Center: Node {
  public let child: Node

  public init(child: Node) {
    self.child = child
  }

  public func render() -> String {
    let styles = [
      "display": "flex", "justify-content": "center", "align-items": "center",
      "width": "100%", "height": "100%",
    ]

    return createElement(
      "div", attributes: ["style": createStyles(styles)], children: [child.render()])
  }
}
