public struct Link: Node {
  public let href: String?
  public let styles: [String: String]
  public let child: Node

  public init(href: String, styles: [String: String] = [:], child: Node) {
    self.href = href
    self.styles = styles
    self.child = child
  }

  public func render() -> String {
    var attributes = styles.isEmpty ? [:] : ["style": createStyles(styles)]

    if let href = href {
      attributes["href"] = href
    }

    return createElement("a", attributes: attributes, children: [child.render()])
  }
}
